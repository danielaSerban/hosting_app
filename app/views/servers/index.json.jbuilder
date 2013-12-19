json.array!(@servers) do |server|
  json.extract! server, :hostName, :internalIP, :externalIP, :user, :password, :rootPassword, :publicSSHKey
  json.url server_url(server, format: :json)
end