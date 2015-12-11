json.array!(@topics) do |topic|
  json.extract! topic, :id, :tutor_id, :subject_id
  json.url topic_url(topic, format: :json)
end
