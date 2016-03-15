json.array!(@user_sites) do |user_site|
  json.extract! user_site, :id, :User_id, :Site_id
  json.url user_site_url(user_site, format: :json)
end
