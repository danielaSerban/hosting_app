json.array!(@databases) do |database|
  json.extract! database, :type, :rootpassword
  json.url database_url(database, format: :json)
end