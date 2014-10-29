json.array!(@experiments) do |experiment|
  json.extract! experiment, :id, :student_id
  json.url experiment_url(experiment, format: :json)
end
