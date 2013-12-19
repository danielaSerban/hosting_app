json.array!(@applications) do |application|
  json.extract! application, :url, :githuburl, :httpbasicUser, :httpbasicpassword, :adminuser, :adminpassword, :serverPath, :flag
  json.url application_url(application, format: :json)
end