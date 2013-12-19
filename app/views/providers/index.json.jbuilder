json.array!(@providers) do |provider|
  json.extract! provider, :name, :contactname, :contactemail, :username, :userpassword
  json.url provider_url(provider, format: :json)
end