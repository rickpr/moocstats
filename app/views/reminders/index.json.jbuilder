json.array!(@reminders) do |reminder|
  json.extract! reminder, :id, :student_id
  json.url reminder_url(reminder, format: :json)
end
