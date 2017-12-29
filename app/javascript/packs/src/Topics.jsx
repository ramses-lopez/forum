import React from 'react'
import ReactDOM from 'react-dom'
import TopicListItem from './TopicListItem'

class Topics extends React.Component {
  constructor(props){
    super(props)
    this.state = {
      topics: []
    }
  }

  componentDidMount(){
    this.getTopics()
  }

  getTopics = () => {
    const rq = new Request('http://localhost:3000/topics.json', {})
    fetch(rq)
    .then(response => {
      if(response.ok){
        response.json()
        .then(posts => {
          this.setState({topics: posts})
        })
      }
      else {
        console.log('Not OK',response);
      }
    })
    .catch(e => {
      console.error(e)
    })
  }

  render(){
    return this.state.topics.map(t => <TopicListItem key={t.id} topic={t}/>)
  }
}

export default Topics
