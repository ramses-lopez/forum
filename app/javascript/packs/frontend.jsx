import React from 'react'
import ReactDOM from 'react-dom'
import { Route, Router, BrowserRouter} from "react-router-dom";
import Topics from './src/Topics'

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <BrowserRouter>
      <div>
        <Route path='/topics1' component={Topics} />
      </div>
    </BrowserRouter>,
    document.body.appendChild(document.createElement('div')),
  )
})
