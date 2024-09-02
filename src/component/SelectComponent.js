import React, { useState } from 'react'

export default function SelectComponent(props) {

    const [selected, setSelected] = useState("Aadvika")

    return (
        <select value={selected} onChange={e => setSelected(e.target.value)}>
            <option value="Manju">Manju</option>
            <option value="Vishwa">Vishwa</option>
            <option value="Aadvika">Aadvika</option>
        </select>
    )
}
