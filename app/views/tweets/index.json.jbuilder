json.array!(@tweets) do |tweet|
  json.extract! tweet, :tweet
  json.url tweet_url(tweet, format: :json)
end
