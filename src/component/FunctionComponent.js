import React from 'react'

function Car(props) {
    return (<li>{props.color}</li>)
}

export default function FunctionComponent(props) {

    function clickedOnDiv(name, event) {
        // event.preventDefaultBehavior();
        console.log("clickedOnDiv", name);
        console.log(event);

    }

    let colors = ['Blue', 'Green', 'Orange']
    let liItems = [];

    for (let index = 0; index < colors.length; index++) {
        liItems.push(<Car key={index} color={colors[index]} index={index} />)
    }

    return (
        <>
            <div>We have these many colors</div>
            <ul>
                {liItems}
            </ul>
            <div onClick={(event) => clickedOnDiv("manju", event)}>FunctionComponent - {props.name} </div>

        </>
    )
}
