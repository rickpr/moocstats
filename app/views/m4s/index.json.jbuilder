json.array!(@m4s) do |m4|
  json.extract! m4, :id, :one, :two, :three, :quiz_id
  json.url m4_url(m4, format: :json)
end
