var IntelliSearch = React.createClass({displayName: "IntelliSearch",
    onSelect: function(e){
        this.onTextChange('');
        this.props.onSelect(e);
    },

    render: function(){
        return (
            React.createElement("div", null, 
                React.createElement(SearchBar, {onTextChange: this.onTextChange, startText: this.state.startText}), 
                React.createElement(SearchResult, {result: this.state.result, onSelect: this.onSelect, visible: this.state.startText!=''})
            )
            );
    },

    onTextChange: function(text){
        var self = this;
        if(text==''){
            if(self.isMounted())
                self.setState(self.getInitialState());
            return;
        }
        $.getJSON('/search?text='+text, function(result){
            if(self.isMounted()){
                self.setState({result:result,startText:text});
            }
        });
    },

    getInitialState: function(){
        return {
            result: {
                Tournaments:[],
                Players:[],
                Teams:[]
            },
            startText: ''
        };
    }
});

var SearchBar = React.createClass({displayName: "SearchBar",
    handleChange: function(){
        this.props.onTextChange(this.refs.searchText.getDOMNode().value);
    },

    render: function(){
        return (React.createElement("input", {type: "text", value: this.props.startText, placeholder: "Search...", ref: "searchText", onChange: this.handleChange, className: "form-control"}));
    }
});

var SearchResult = React.createClass({displayName: "SearchResult",
    render: function(){
        if(!this.props.visible)
            return null;

        var rows = [];
        var self = this;

        Object.keys(this.props.result).forEach(function(category){
            var results = this[category];
            if(results && results.length > 0){
                rows.push(React.createElement(ResultCategory, {category: category, key: category}));
                results.forEach(function(entry){
                    entry.type = category;
                    rows.push(React.createElement(Result, {entry: entry, onSelect: self.props.onSelect, key: entry.slug}));
                });
                rows.push(React.createElement(Divider, null));
            }
        }, this.props.result);

        return (
            React.createElement("ul", {className: "dropdown-menu scrollable-menu"}, 
                rows
            )
            );
    }
});

var Divider = React.createClass({displayName: "Divider",
    render: function(){
        return (
            React.createElement("li", {className: "divider"})
        );
    }
});

var ResultCategory = React.createClass({displayName: "ResultCategory",
    staticLABELS: {
        Players:'info',
        Tournaments:'success',
        Teams:'danger'
    },

    render: function(){
        var className = 'label label-'+this.staticLABELS[this.props.category];

        return (
            React.createElement("li", {className: "dropdown-header"}, 
                React.createElement("span", {className: className}, this.props.category)
            )
        );
    }
});

var Result = React.createClass({displayName: "Result",
    handleClick: function(){
        this.props.onSelect(this.props.entry);
    },

    render: function(){
        var style = {
            cursor:'pointer'
        };

        return (React.createElement("li", {style: style}, React.createElement("a", {onClick: this.handleClick}, this.props.entry.name)));
    }
});

var DetailRow = React.createClass({displayName: "DetailRow",
    render: function(){
        return (
        React.createElement("li", {className: "list-group-item"}, 
            this.props.name, 
            React.createElement("h4", {className: "list-group-item-heading"}, this.props.data)
        )
        )
    }
});

var SelectableRow = React.createClass({displayName: "SelectableRow",
    handleClick: function(){
        this.props.onSelected(this.props.entity);
    },

    render: function(){
        var style = {
            cursor:'pointer'
        };

        return (
            React.createElement("li", {style: style, className: "list-group-item", onClick: this.handleClick}, this.props.name)
        )
    }
});
var RowList = React.createClass({displayName: "RowList",
    render: function(){
        var self = this;
        var rows = [];
        var entities = this.props.entities;
        entities.forEach(function(entity){
            entity.type=self.props.type;
            rows.push(React.createElement(SelectableRow, {entity: entity, name: entity.name, onSelected: self.props.onSelected}));
        });

        return (
        React.createElement("li", {className: "list-group-item"}, 
            this.props.type, 
            React.createElement("ul", {className: "list-group list-group-transparent"}, 
                rows
            )
        )
        );
    }
});
var DetailView = React.createClass({displayName: "DetailView",
    staticLABELS: {
        Players:'info',
        Tournaments:'success',
        Teams:'danger'
    },

    addRow:function(rows,name,data){
        if(data && data.length>0) {
            rows.push(React.createElement(DetailRow, {name: name, data: data}));
        }
    },

    handleExit: function(){
        this.props.onSelected(null);
    },

    render: function(){
        var selected = this.props.selected;
        if(!selected || this.props.hidden) {
            return null;
        }

        var rows = [];

        switch(selected.type){
            case 'Players':
                this.addRow(rows,'Name',selected.name);
                this.addRow(rows,'Age',selected.age.toString());
                this.addRow(rows,'Nationality',selected.nationality);
                this.addRow(rows,'Team',selected.team);
                var teams = [];
                var transfers = selected.transfers;
                if(transfers&&transfers.length>0){
                    teams.push(transfers[0].from);
                    transfers.forEach(function(transfer){
                        teams.push(transfer.to);
                    });
                    rows.push(React.createElement(RowList, {entities: teams, type: "Teams", onSelected: this.props.onSelected}));
                }
                break;
            case 'Teams':
                this.addRow(rows,'Name',selected.name);
                this.addRow(rows,'Year Formed',selected.yearFormed.toString());
                if(selected.players&&selected.players.length>0)
                    rows.push(React.createElement(RowList, {entities: selected.players, type: "Players", onSelected: this.props.onSelected}));
                break;
            case 'Tournaments':
                this.addRow(rows,'Name',selected.name);
                this.addRow(rows,'Date',selected.date);
                if(selected.teams&&selected.teams.length>0)
                    rows.push(React.createElement(RowList, {entities: selected.teams, type: "Teams", onSelected: this.props.onSelected}));
                break;
        }

        return (
            React.createElement("div", {className: "panel panel-"+this.staticLABELS[selected.type]+" panel-transparent"}, 
                React.createElement("div", {className: "panel-heading"}, 
                    React.createElement("button", {type: "button", className: "btn btn-default btn-sm pull-right", onClick: this.handleExit}, 
                        React.createElement("span", {className: "glyphicon glyphicon-remove", "aria-hidden": "true"})
                    ), 
                    React.createElement("h6", null, selected.type.slice(0,selected.type.length-1))
                ), 
                React.createElement("ul", {className: "list-group list-group-transparent"}, 
                    rows
                )
            )
            );
    }
});

var App = React.createClass({displayName: "App",
    staticURL: {
        Players:'player',
        Tournaments:'tournament',
        Teams:'team'
    },

    componentDidMount: function(){
        window.globe.setOnSelect(this.onSelect);
    },

    render: function(){
        var style ={
            position:'absolute',
            right:'0px',
            margin:'20px',
            width:'20%',
            zIndex:1
        };

        return (
            React.createElement("div", {style: style},
                React.createElement(IntelliSearch, {onSelect: this.onSelect}),
                React.createElement("br", null),
                React.createElement(DetailView, {selected: this.state.selected, onSelected: this.onSelect})
            )
        );
    },

    onSelect: function(e){
        var self = this;
        if(!e){
            if(self.isMounted())
                self.setState(this.getInitialState());
            window.globe.updateTransfers([]);
            return
        }
        $.getJSON("/"+this.staticURL[e.type]+'?name='+e.name, function(result){
            result.type = e.type;
            if(self.isMounted()){
                var transfers = [];
                switch(e.type){
                    case 'Tournaments':
                        break;
                    case 'Teams':
                    case 'Players':
                        transfers=result.transfers;
                        break;
                }
                window.globe.updateTransfers(transfers);
                self.setState({selected:result});
            }
        });
    },

    getInitialState: function(){
        return {selected:null}
    }
});

React.render(
    React.createElement(App, null),
    document.getElementById('gui')
);
