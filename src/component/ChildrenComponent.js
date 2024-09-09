import React from 'react'


function ButtonComponent({ children, cssStyle }) {
    return (
        <button id='' style={cssStyle}>{children}</button>
    )
}

function Alert({ children, cssStyle }) {
    return <>
        <div style={cssStyle}>
            {children}
        </div>
    </>
}

export default function ChildrenComponent() {
    return (
        <Alert cssStyle={{ margin: '5px solid black', backgroundColor: 'brown' }}>
            <div>
                Are you sure, you want to delete?
            </div>
            <ButtonComponent cssStyle={{ 'backgroundColor': 'grey', margin: "10px", padding: "5px", fontSize: "25px"}}>Delete</ButtonComponent>
        </Alert>
    )
}
