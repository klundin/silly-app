json.array!(@reviews) do |review|
  json.extract! review, :id, :qualitydimension, :reviewtext, :rating, :user_id, :company_id
  json.url review_url(review, format: :json)
end
