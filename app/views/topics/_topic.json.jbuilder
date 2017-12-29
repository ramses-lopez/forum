json.extract! topic, :id, :title, :content, :user_id, :created_at, :updated_at
json.user topic.user.name
json.created_at topic.created_at.to_formatted_s(:long)
json.updated_at topic.updated_at.to_formatted_s(:long)
json.post_count topic.posts.size
json.posts topic.posts
json.url topic_url(topic, format: :json)
