json.array!(@application_databases) do |application_database|
  json.extract! application_database, :name, :user, :password
  json.url application_database_url(application_database, format: :json)
end