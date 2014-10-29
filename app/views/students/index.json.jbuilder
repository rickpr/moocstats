json.array!(@students) do |student|
  json.extract! student, :id, :cid, :grade, :result, :sigtrack, :group
  json.url student_url(student, format: :json)
end
