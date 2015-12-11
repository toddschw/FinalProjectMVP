json.array!(@subjects) do |subject|
  json.extract! subject, :id, :expertise
  json.url subject_url(subject, format: :json)
end
