get '/' do
  client = Buffer::Client.new(ENV['BUFFER_ACCESS_TOKEN'])
  profile = client.profile_by_id('553c4a502be1483f25cc4299')
  @username = profile.formatted_username
  @updates = client.updates_by_profile_id('553c4a502be1483f25cc4299', status: :pending).updates
  haml :index
end

