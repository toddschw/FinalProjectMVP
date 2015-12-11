json.array!(@tutors) do |tutor|
  json.extract! tutor, :id, :name, :city, :bio, :picurl, :rate, :email
  json.url tutor_url(tutor, format: :json)
end
