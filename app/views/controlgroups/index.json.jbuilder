json.array!(@controlgroups) do |controlgroup|
  json.extract! controlgroup, :id, :student_id
  json.url controlgroup_url(controlgroup, format: :json)
end
