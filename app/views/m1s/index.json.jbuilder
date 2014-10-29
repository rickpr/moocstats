json.array!(@m1s) do |m1|
  json.extract! m1, :id, :one, :two, :quiz_id
  json.url m1_url(m1, format: :json)
end
