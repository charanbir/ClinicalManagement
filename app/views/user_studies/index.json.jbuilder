json.array!(@user_studies) do |user_study|
  json.extract! user_study, :id, :User_id, :Study_id, :dob, :gender, :address
  json.url user_study_url(user_study, format: :json)
end
