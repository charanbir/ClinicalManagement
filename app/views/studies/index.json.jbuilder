json.array!(@studies) do |study|
  json.extract! study, :id, :title, :name, :open_closed
  json.url study_url(study, format: :json)
end
