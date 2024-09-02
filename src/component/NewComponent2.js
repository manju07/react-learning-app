import React, { Component } from 'react'

export default class NewComponent2 extends Component {

    constructor(props) {
        super(props)
        console.log("constructor");
        this.state = props;
    }

    modifyColor = () => {
        this.setState({ color: 'blue' })
    }

    // static getDerivedStateFromProps(state, props) {
    //     console.log("getDerivedStateFromProps")
    //     return {color: 'brown'}
    // }


    render() {
        console.log("render");
        
        return (
            <div> Car is of color <button onClick={this.modifyColor}>{this.state.color}</button>, registered in {this.state.country},{this.state.state} </div>
        )
    }
}
