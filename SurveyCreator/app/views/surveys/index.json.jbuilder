json.array!(@surveys) do |survey|
  json.extract! survey, :id, :name, :user, :time
  json.url survey_url(survey, format: :json)
end
