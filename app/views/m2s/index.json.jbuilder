json.array!(@m2s) do |m2|
  json.extract! m2, :id, :one, :two, :three, :quiz_id
  json.url m2_url(m2, format: :json)
end
