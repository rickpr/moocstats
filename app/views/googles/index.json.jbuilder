json.array!(@googles) do |google|
  json.extract! google, :id, :member, :email, :student_id
  json.url google_url(google, format: :json)
end
