import React from 'react'
import { useReducer } from 'react'

function ReducerComponent() {

    const reducer= (state, action) => {

        if (action.type == "sell_meal") {
            return { money: state.money + 10 }
        }

        if (action.type == "buy_veg") {
            return { money: state.money - 10 }
        }
        
        return state;
    }

    const [state, dispatch] = useReducer(reducer, { money: 10 })

    return (
        <>
            <div>Wallet: {state.money}</div>
            <div>
                <button onClick={() => dispatch({ type: "buy_veg" })}> Buy Veg </button>
                <button onClick={() => dispatch({ type: "sell_meal" })}> Sell Meal </button>
            </div>
        </>

    )
}

export default ReducerComponent