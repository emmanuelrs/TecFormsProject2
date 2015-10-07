json.array!(@surveys) do |survey|
  json.extract! survey, :id, :name, :availability, :creation_date, :user_id
  json.url survey_url(survey, format: :json)
end
