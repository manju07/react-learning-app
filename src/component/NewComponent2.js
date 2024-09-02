import React, { Component } from 'react'

export default class NewComponent2 extends Component {

    constructor(props) {
        super(props)
        console.log("constructor");
        this.state = props;
    }

    modifyColor = () => {
        this.setState({ color: 'red' })
    }

    shouldComponentUpdate() { // While updating
        return true;
    }

    static getDerivedStateFromProps(props, stats) { // called while mounting/updating
        console.log("getDerivedStateFromProps", "\nprops", props, "\nstats", stats)
        return { color: stats.color }
    }

    getSnapshotBeforeUpdate(prevProps, prevState) {
        console.log("getSnapshotBeforeUpdate");
        
       alert("Before the update, the favorite was " + prevState.color);
    }

    render() {
        console.log("render");

        return (
            <div> Car is of color <button onClick={this.modifyColor}>{this.state.color}</button>, registered in {this.state.country},{this.state.state} </div>
        )
    }
}
