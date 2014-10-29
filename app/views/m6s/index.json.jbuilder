json.array!(@m6s) do |m6|
  json.extract! m6, :id, :one, :two, :three, :four, :quiz_id
  json.url m6_url(m6, format: :json)
end
