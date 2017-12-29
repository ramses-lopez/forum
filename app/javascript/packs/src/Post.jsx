import React from 'react'
import ReactDOM from 'react-dom'

const Post = ({ post }) => (
  <div className="list-group-item">
    <p className="">{post.content}</p>
    <blockquote className="blockquote mb-0 text-right">
      <footer className="blockquote-footer">
        <img href="{post.user.photo_url}"/> {post.user} - {post.created_at}
      </footer>
    </blockquote>
  </div>
)

export default Post
