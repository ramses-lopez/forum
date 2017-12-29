import React from 'react'
import ReactDOM from 'react-dom'
import Post from './Post'

class Topic extends React.Component {

  loadPosts(){
    const topic = this.props.topic

    return (topic.posts !== undefined && topic.posts.length > 0) ?
      topic.posts.map(p => <Post key={p.id} post={p} />) :
      (<li className="list-group-item text-muted text-center"> Be the first to comment! </li>)
  }

  render(){
    const topic = this.props.topic

    console.log(topic);
    console.log(topic.posts);

    return (
      <div className="card">
        <div className="card-header bg-primary">
          {topic.title} ({topic.post_count})
        </div>
        <div className="card-body">
          <p className="card-text">{topic.content}</p>
          <blockquote className="blockquote mb-0 text-right">
            <footer className="blockquote-footer">
              <img href="{topic.user.photo_url}"/> {topic.user} - {topic.created_at}
            </footer>
          </blockquote>
        </div>
        <ul className="list-group list-group-flush">
          { this.loadPosts() }
        </ul>
      </div>
    )
  }
}

export default Topic
