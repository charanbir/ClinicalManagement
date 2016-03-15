json.array!(@site_studies) do |site_study|
  json.extract! site_study, :id, :Site_id, :Study_id
  json.url site_study_url(site_study, format: :json)
end
