json.array!(@programs) do |program|
  json.extract! program, :id, :one, :two, :three, :four, :student_id
  json.url program_url(program, format: :json)
end
