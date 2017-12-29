json.extract! post, :id, :content, :user_id
json.user topic.user.name
json.email topic.user.email
json.photo_url topic.user.photo_url
json.created_at topic.created_at.to_formatted_s(:long)
json.updated_at topic.updated_at.to_formatted_s(:long)
json.url post_url(post, format: :json)
