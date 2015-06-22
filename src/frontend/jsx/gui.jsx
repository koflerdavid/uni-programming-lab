var IntelliSearch = React.createClass({
    newtimeout: function(fun){
        if(this.timeout != null) {
            clearTimeout(this.timeout);
        }

        this.timeout = setTimeout(fun,1000);
    },
    onSelect: function(e){
        this.setState(this.getInitialState());
        this.props.onSelect(e);
    },

    render: function(){
        var style = {
            pointerEvents:'auto',
            minHeight:this.state.showLoading?'9rem':'4rem'
        };

        return (
            <div style={style}>
                <SearchBar onTextChange={this.onTextChange} startText={this.state.startText}/>
                <LoadingBar showLoading={this.state.showLoading}/>
                <SearchResult result={this.state.result} onSelect={this.onSelect} visible={this.state.startText!=''}/>
            </div>
        );
    },

    onTextChange: function(text){
        var self = this;

        if(!self.isMounted()) {
            return;
        }

        if(text == '') {
            if(self.timeout != null) {
                clearTimeout(self.timeout);
            }

            self.setState({startText:'',showLoading:false});
            return;
        }

        var state = self.getInitialState();
        state.showLoading = true;
        self.setState(state);
        this.newtimeout(function(){
            $.getJSON('/search', {text: text}, function(result){
                self.setState({showLoading:false});
                if(self.isMounted()){
                    self.setState({result:result,startText:text});
                }
            });
        });
    },

    getInitialState: function(){
        return {
            result:{
                Tournaments:[],
                Players:[],
                Teams:[]
            },
            startText:'',
            showLoading:false
        };
    }
});

var LoadingBar = React.createClass({
    render: function(){
        if(this.props.showLoading)
            return (<div><img src="img/ajax-loader.gif" className="loading"/></div>);
        return <div/>
    }
});

var SearchBar = React.createClass({
    handleChange: function(){
        this.props.onTextChange(this.refs.searchText.getDOMNode().value);
    },

    render: function(){
        return (<input type='text' placeholder='Search...' ref='searchText' onChange={this.handleChange} className='form-control'/>);
    }
});

var SearchResult = React.createClass({
    render: function(){
        if(!this.props.visible) {
            return null;
        }

        var rows = [];
        var self = this;

        Object.keys(this.props.result).forEach(function(category){
            var results = this[category];
            if(results && results.length > 0){
                rows.push(<ResultCategory category={category} key={category+"cat"} />);
                results.forEach(function(entry){
                    entry.type = category;
                    rows.push(<Result entry={entry} onSelect={self.props.onSelect} key={entry.uid+category}/>);
                });
                rows.push(<Divider key={category+"div"}/>);
            }
        }, this.props.result);

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
        Teams:'danger'
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
        };

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
        );
    }
});

var SelectableRow = React.createClass({
    handleClick: function(){
        this.props.onSelected(this.props.entity);
    },

    render: function(){
        var style = {
            cursor:'pointer'
        };

        return (
            <li style={style} className='list-group-item' onClick={this.handleClick}>{this.props.name}</li>
        )
    }
});

var RowList = React.createClass({
    render: function(){
        var self = this;
        var rows = [];

        this.props.entities.forEach(function(entity){
            entity.type = self.props.type;
            rows.push(<SelectableRow entity={entity} name={entity.name} onSelected={self.props.onSelected} key={entity.uid}/>);
        });

        return (
            <li className='list-group-item'>
                {this.props.type}
                <ul className='list-group list-group-transparent'>
                    {rows}
                </ul>
            </li>
        );
    }
});

var DetailView = React.createClass({
    staticLABELS: {
        Players:'info',
        Tournaments:'success',
        Teams:'danger'
    },

    addRow:function(rows,name,data){
        if(data && data.length>0) {
            rows.push(<DetailRow name={name} data={data} key={name}/>);
        }
    },

    handleExit: function(){
        this.props.onSelected(null);
    },

    render: function(){
        var self = this;
        var selected = this.props.selected;
        if(!selected || this.props.hidden) {
            return null;
        }

        var rows = [];

        switch(selected.type){
            case 'Players':
                this.addRow(rows,'Name',selected.name);
                if(selected.details)
                    Object.keys(selected.details).forEach(function(detailkey){
                        self.addRow(rows,detailkey,selected.details[detailkey]);
                    });
                var teams = [];
                var transfers = selected.transfers;
                if(transfers&&transfers.length>0){
                    teams.push(transfers[0].from);
                    transfers.forEach(function(transfer){
                        teams.push(transfer.to);
                    });
                    rows.push(<RowList entities={teams} type="Teams" onSelected={this.props.onSelected} key={'teams'}/>);
                }
                break;

            case 'Teams':
                this.addRow(rows,'Name',selected.name);

                if(selected.details)
                    Object.keys(selected.details).forEach(function(detailkey){
                        self.addRow(rows,detailkey,selected.details[detailkey]);
                    });

                if(selected.players&&selected.players.length>0)
                    rows.push(<RowList entities={selected.players} type="Players" onSelected={this.props.onSelected} key={'players'}/>);
                break;

            case 'Tournaments':
                this.addRow(rows,'Name',selected.name);
                this.addRow(rows,'Date',selected.date);
                if(selected.teams&&selected.teams.length>0)
                    rows.push(<RowList entities={selected.teams} type="Teams" onSelected={this.props.onSelected}/>);
                break;
        }

        var style = {
            overflow:'auto',
            pointerEvents:'auto'
        };

        return (
            <div className={"panel panel-"+this.staticLABELS[selected.type]+" panel-transparent"} style={style}>
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
        );
    }
});

var TwitterDetail = React.createClass({
    render: function(){
        var self = this;
        var rows = [];
        if(!this.props.selected)
            return <div></div>
        var rumours = this.props.selected.rumours;
        if(rumours==null)
            return <div></div>
        var index = 0;
        rumours.forEach(function(rumour){
            rows.push(<li className='list-group-item' key={index}>
                            {rumour.rumour.text}
                        </li>);
            index+=1;
        });
        var style = {
            overflow:'auto',
            pointerEvents:'auto'
        }
        return (
            <div className={"panel panel-info panel-transparent"} style={style}>
                <div className="panel-heading">
                    <h6>{this.props.selected.teamname}</h6>
                </div>
                <ul className='list-group list-group-transparent'>
                    {rows}
                </ul>
            </div>
        )
    }
});

var RumourDetail = React.createClass({

    addRow:function(rows,name,data){
        rows.push(<DetailRow name={name} data={data} key={name}/>);
    },
    render: function(){
        var self = this;
        var rows = [];
        if(!this.props.selected)
            return <div></div>
        var rumour = this.props.selected.rumour;
        if(!rumour)
            return <div></div>
        this.addRow(rows,'From',rumour.from.name);
        this.addRow(rows,'To',rumour.to.name);
        if(rumour.prob && rumour.prob!='?')
            this.addRow(rows,'Probabilty',rumour.prob);
        if(rumour.score)
            this.addRow(rows,'Opinion',rumour.score);
        var baseurl = "http://www.transfermarkt.co.uk";
        var link = (<a href={baseurl+rumour.link}>Source</a>);
        this.addRow(rows,'Link',link);
        var style = {
            overflow:'auto',
            pointerEvents:'auto'
        }
        return (
            <div className={"panel panel-info panel-transparent"} style={style}>
                <div className="panel-heading">
                    <h6>{this.props.selected.rumour.player}</h6>
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
        Teams:'team'
    },

    componentDidMount: function(){
        window.globe.setOnSelect(this.onSelect);
        var self = this;
        $('#state input').click(function(){self.onStateChange(this.name);});
    },

    render: function() {
        var style = {
            position: 'absolute',
            right: '0px',
            width: '20%',
            zIndex: 1001,
            display: 'flex',
            flexDirection: 'column',
            height: '100%',
            paddingTop: '2rem',
            paddingRight: '2rem',
            pointerEvents: 'none'
        };

        var style2 = {
            flex: '1'
        };

        var style3 = {
            position: 'absolute',
            paddingTop: '2rem',
            paddingLeft: '2rem',
            zIndex: 1002
        };

        var details = null;
        if (this.state.currentstate=='twitter') {
            details = (<div style={style}>
                <TwitterDetail selected={this.state.selected}/>
            </div>)
        } else if(this.state.currentstate=='rumour'){
            details = (<div style={style}>
                <RumourDetail selected={this.state.selected}/>
            </div>)
        } else {
            details = (<div style={style}>
                <IntelliSearch onSelect={this.onSelect} />
                <DetailView selected={this.state.selected} onSelected={this.onSelect} />
                <div style={style2}></div>
            </div>);
        }

        return (
            <div>
                <div style={style3}>
                    <div className="btn-group" data-toggle="buttons" id="state">
                        <label className={"btn btn-default" + (this.state.currentstate=="search"?" active":"")}>
                            <input name="search" checked="" type="radio">Search</input>
                        </label>
                        <label className={"btn btn-default" + (this.state.currentstate=="twitter"?" active":"")}>
                            <input name="twitter" type="radio">Twitter</input>
                        </label>
                        <label className={"btn btn-default" + (this.state.currentstate=="rumour"?" active":"")}>
                            <input name="rumour" type="radio">Rumours</input>
                        </label>
                    </div>  
                </div>
                {details}
            </div>
        );
    },

    onStateChange: function(newstate){
        if(newstate==this.state.currentstate)
            return;
        window.globe.clear();
        var self = this;
        self.setState({selected:null,currentstate:newstate});
        this.rumours = [];
        if(newstate=='twitter'){
            $.getJSON('/twitterrumours/', function(result){
                self.rumours = result;
                if(self.state.currentstate=='twitter')
                    window.globe.showTwitterRumours(result);
            });
        }else if(newstate=='rumour'){
            $.getJSON('/transferrumours/', function(result){
                self.rumours = result;
                if(self.state.currentstate=='rumour')
                    window.globe.showTransferRumours(result);
            });
        }
    },

    onSelect: function(e){
        var self = this;
        if(!e){
            if(self.isMounted()) {
                self.setState(this.getInitialState());
            }

            window.globe.clear();
            return;
        }

        if(this.state.currentstate=='twitter'){
            var rumourfiltered = [];
            var name = "";
            this.rumours.forEach(function(rumour){
                rumour.teams.forEach(function(team){
                    if(team.uid==e.uid){
                        rumourfiltered.push(rumour);
                        name = team.name;
                    }
                })
            });

            this.setState({selected:{rumours:rumourfiltered,teamname:name}});
            return;
        }else if (this.state.currentstate=='rumour'){
            this.setState({selected:{rumour:e.rumour}});
            return;
        }

        $.getJSON("/"+this.staticURL[e.type]+'/'+e.uid, function(result){
            result.type = e.type;
            if(self.isMounted()){
                var transfers = [];
                var overlays = [];
                console.log(result);

                switch(e.type){
                    case 'Tournaments':
                        break;

                    case 'Teams':
                        if(result.pos.length == 2) {
                            overlays.push({name: result.name, uid: e.uid, pos: result.pos});
                        }

                        transfers = result.transfers ? result.transfers: [];
                        transfers.forEach(function (transfer) {
                            if (!transfer.hasOwnProperty('from')) {
                                transfer.from = e;
                            }

                            if (!transfer.hasOwnProperty('to')) {
                                transfer.to = e;
                                console.log('Hi');
                            }
                        });

                        break;

                    case 'Players':
                        if(result.team) {
                            overlays.push({name: result.team.name, uid: result.team.uid, pos: result.team.loc});
                        }

                        transfers = result.transfers ? result.transfers: [];
                        break;
                }

                window.globe.updateTransfers(overlays, transfers);
                self.setState({selected:result});
            }
        });
    },

    getInitialState: function(){
        return {selected:null,currentstate:'search'}
    }
});

React.render(
    <App />,
    document.getElementById('gui')
);
