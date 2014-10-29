json.array!(@posts) do |post|
  json.extract! post, :id, :posts, :upvotes, :student_id
  json.url post_url(post, format: :json)
end
