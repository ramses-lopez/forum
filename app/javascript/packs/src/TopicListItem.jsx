import React from 'react'
import ReactDOM from 'react-dom'

const TopicListItem = ({ topic }) => (
  <li className="list-group-item">
    <p className="">{topic.content.slice(0,50)}</p>
    <blockquote className="blockquote mb-0 text-right">
      <footer className="blockquote-footer">
        <img href="{topic.user.photo_url}"/> {topic.user} - {topic.created_at}
      </footer>
    </blockquote>
  </li>
)

export default TopicListItem
