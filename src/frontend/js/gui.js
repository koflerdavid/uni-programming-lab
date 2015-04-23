var IntelliSearch = React.createClass({
    onSelect: function(e){
        this.onTextChange('');
        this.props.onSelect(e);
    },
    render: function(){
        return (
            <div>
                <SearchBar onTextChange={this.onTextChange} startText={this.state.startText}/>
                <SearchResult result={this.state.result} onSelect={this.onSelect} visible={this.state.startText!=''}/>
            </div>
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
            result:{
                Tournaments:[],
                Players:[],
                Teams:[],
            },
            startText:''
        };
    }
});
var SearchBar = React.createClass({
    handleChange: function(){
        this.props.onTextChange(this.refs.searchText.getDOMNode().value);
    },
    render: function(){
        return (<input type='text' value={this.props.startText} placeholder='Search...' ref='searchText' onChange={this.handleChange} className='form-control'/>);
    }
});
var SearchResult = React.createClass({
    render: function(){
        if(!this.props.visible)
            return null
        var rows = [];
        var lastCategory = null;
        var self = this;
        Object.keys(this.props.result).forEach(function(category){
            var results = this[category];
            if(results && results.length > 0){
                rows.push(<ResultCategory category={category} key={category} />);
                results.forEach(function(entry){
                    entry.type = category;
                    rows.push(<Result entry={entry} onSelect={self.props.onSelect} key={entry.uid}/>);
                });
                rows.push(<Divider />);
            }
        },this.props.result);
        return (
            <ul className='dropdown-menu scrollable-menu'>
                {rows}
            </ul>
            );
    }
});
var Divider = React.createClass({
    render: function(){
        return (
            <li className='divider'></li>
        );
    }
});
var ResultCategory = React.createClass({
    staticLABELS: {
        Players:'info',
        Tournaments:'success',
        Teams:'danger',
    },
    render: function(){
        var className = 'label label-'+this.staticLABELS[this.props.category]
        return (
            <li className='dropdown-header'>
                <span className={className}>{this.props.category}</span>
            </li>
        );
    }
});
var Result = React.createClass({
    handleClick: function(){
        this.props.onSelect(this.props.entry);
    },
    render: function(){
        var style = {
            cursor:'pointer'
        }
        return (<li style={style}><a onClick={this.handleClick}>{this.props.entry.name}</a></li>);
    }
});
var DetailRow = React.createClass({
    render: function(){
        return (
        <li className='list-group-item'>
            {this.props.name}
            <h4 className='list-group-item-heading'>{this.props.data}</h4>
        </li>
        )
    }
});
var SelectableRow = React.createClass({
    handleClick: function(){
        this.props.onSelected(this.props.entity);
    },
    render: function(){
        var style = {
            cursor:'pointer'
        }
        return (
            <li style={style} className='list-group-item' onClick={this.handleClick}>{this.props.name}</li>
        )
    }
});
var RowList = React.createClass({
    render: function(){
        var self = this;
        var rows = [];
        var entities = this.props.entities;
        entities.forEach(function(entity){
            entity.type=self.props.type;
            rows.push(<SelectableRow entity={entity} name={entity.name} onSelected={self.props.onSelected}/>);
        });
        return (
        <li className='list-group-item'>
            {this.props.type}
            <ul className='list-group list-group-transparent'>
                {rows}
            </ul>
        </li>
        )
    }
});
var DetailView = React.createClass({
    staticLABELS: {
        Players:'info',
        Tournaments:'success',
        Teams:'danger',
    },
    addRow:function(rows,name,data){
        if(data && data.length>0)
            rows.push(<DetailRow name={name} data={data}/>);
    },
    handleExit: function(){
        this.props.onSelected(null);
    },
    render: function(){
        var selected = this.props.selected;
        if(!selected || this.props.hidden)
            return null
        var name = selected.name;
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
                    rows.push(<RowList entities={teams} type="Teams" onSelected={this.props.onSelected}/>);
                }
                break;
            case 'Teams':
                this.addRow(rows,'Name',selected.name);
                this.addRow(rows,'Year Formed',selected.yearformed.toString());
                if(selected.players&&selected.players.length>0)
                    rows.push(<RowList entities={selected.players} type="Players" onSelected={this.props.onSelected}/>);
                break;
            case 'Tournaments':
                this.addRow(rows,'Name',selected.name);
                this.addRow(rows,'Date',selected.date);
                if(selected.teams&&selected.teams.length>0)
                    rows.push(<RowList entities={selected.teams} type="Teams" onSelected={this.props.onSelected}/>);
                break;
        }
        return (
            <div className={"panel panel-"+this.staticLABELS[selected.type]+" panel-transparent"}>
                <div className="panel-heading">
                    <button type="button" className="btn btn-default btn-sm pull-right" onClick={this.handleExit}>
                        <span className="glyphicon glyphicon-remove" aria-hidden="true"></span>
                    </button>
                    <h6>{selected.type.slice(0,selected.type.length-1)}</h6>
                </div>
                <ul className='list-group list-group-transparent'>
                    {rows}
                </ul>
            </div>
            )
    }
});
var App = React.createClass({
    staticURL: {
        Players:'player',
        Tournaments:'tournament',
        Teams:'team',
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
        }
        return (
        <div style={style}>
            <IntelliSearch onSelect={this.onSelect} />
            <br/>
            <DetailView selected={this.state.selected} onSelected={this.onSelect} />
        </div>
        )
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
    <App />,
    document.getElementById('gui')
);
