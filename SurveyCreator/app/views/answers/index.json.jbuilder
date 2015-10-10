json.array!(@answers) do |answer|
  json.extract! answer, :id, :name_option
  json.url answer_url(answer, format: :json)
end
