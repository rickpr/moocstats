json.array!(@forums) do |forum|
  json.extract! forum, :id, :total, :web_app_arch_ii, :general_discussion, :study_groups, :lectures, :assignments, :student_id
  json.url forum_url(forum, format: :json)
end
