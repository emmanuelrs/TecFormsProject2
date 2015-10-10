json.array!(@surveys) do |survey|
  json.extract! survey, :id, :questionN
  json.url survey_url(survey, format: :json)
end
