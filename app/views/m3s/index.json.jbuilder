json.array!(@m3s) do |m3|
  json.extract! m3, :id, :one, :two, :quiz_id
  json.url m3_url(m3, format: :json)
end
