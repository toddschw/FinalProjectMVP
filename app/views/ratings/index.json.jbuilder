json.array!(@ratings) do |rating|
  json.extract! rating, :id, :review, :pencils, :name_of_reviewer, :tutor_id
  json.url rating_url(rating, format: :json)
end
