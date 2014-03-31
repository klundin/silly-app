json.array!(@companies) do |company|
  json.extract! company, :id, :companyname, :companydesc, :user_id
  json.url company_url(company, format: :json)
end
