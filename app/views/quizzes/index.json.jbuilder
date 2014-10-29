json.array!(@quizzes) do |quiz|
  json.extract! quiz, :id, :survey, :student_id
  json.url quiz_url(quiz, format: :json)
end
