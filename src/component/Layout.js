import React from 'react'
import { Link } from 'react-router-dom'

function Layout() {
  return (
    <div>
        <div> Welcome to the App</div>
        <nav>
            <ul>
                <li>
                    <Link to="login">Login</Link>
                </li>
                <li>
                    <Link to="select">select</Link>
                </li>
            </ul>

        </nav>
    </div>
  )
}

export default Layout