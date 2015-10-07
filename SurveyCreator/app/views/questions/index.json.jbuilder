json.array!(@questions) do |question|
  json.extract! question, :id, :question_statement, :survey_id
  json.url question_url(question, format: :json)
end
