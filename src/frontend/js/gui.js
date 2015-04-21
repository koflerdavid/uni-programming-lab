
var IntelliSearch = React.createClass({
    onSelect: function(e){
        this.onTextChange('');
        this.props.onSelect(e);
    },
    render: function(){
        var style ={
            position:'absolute',
            padding:'20px',
        }
        return (
            <div style={style}>
                <SearchBar onTextChange={this.onTextChange} startText={this.state.startText}/>
                <SearchResult result={this.state.result} onSelect={this.onSelect}/>
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
        Players:'default',
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
var DetailTransfers = React.createClass({
    render: function(){
        var rows = [];
        var transfers = this.props.transfers;
        rows.push(<li className='list-group-item'>{transfers[0].from}</li>);
        transfers.forEach(function(transfer){
            rows.push(<li className='list-group-item'>{transfer.to}</li>);
        });
        
        return (
        <li className='list-group-item'>
            Transfers
            <ul className='list-group list-group-transparent'>
                {rows}
            </ul>
        </li>
        )
    }
});
var DetailPlayers = React.createClass({
    render: function(){
        var rows = [];
        var players = this.props.players;
        players.forEach(function(player){
            rows.push(<li className='list-group-item'>{player.name}</li>);
        });
        return (
        <li className='list-group-item'>
            Transfers
            <ul className='list-group list-group-transparent'>
                {rows}
            </ul>
        </li>
        )
    }
});
var DetailView = React.createClass({
    addRow:function(rows,name,data){
        if(data && data.length>0)
            rows.push(<DetailRow name={name} data={data}/>);
    },
    render: function(){
        var style ={
            position:'absolute',
            padding:'20px',
            right:'0px',
            width:'40%'
        }
        var selected = this.props.selected;
        if(!selected)
            return (<div></div>)
        var name = selected.name;
        var rows = [];
        switch(selected.type){
            case 'Players':
                this.addRow(rows,'Name',selected.name);
                this.addRow(rows,'Age',selected.age.toString());
                this.addRow(rows,'Nationality',selected.nationality);
                this.addRow(rows,'Team',selected.team);
                if(selected.transfers&&selected.transfers.length>0)
                    rows.push(<DetailTransfers transfers={selected.transfers} />);
                break;
            case 'Teams':
                this.addRow(rows,'Name',selected.name);
                this.addRow(rows,'Year Formed',selected.yearformed.toString());
                if(selected.players&&selected.players.length>0)
                    rows.push(<DetailPlayers players={selected.players} />);
                break;
        }
        return (
            <div style={style}>
                <div className="panel panel-default panel-transparent">
                    <div className="panel-heading">{selected.type.slice(0,selected.type.length-1)}</div>
                    <ul className='list-group list-group-transparent'>
                        {rows}
                    </ul>
                </div>
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
    render: function(){
        return (
        <div>
            <IntelliSearch onSelect={this.onSelect} />
            <DetailView selected={this.state.selected} />
        </div>
        )
    },
    onSelect: function(e){
        var self = this;
        $.getJSON("/"+this.staticURL[e.type]+'?name='+e.name, function(result){
            result.type = e.type;
            console.log(result);
            if(self.isMounted())
                self.setState({selected:result});
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
