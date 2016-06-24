Rails.application.config.middleware.use OmniAuth::Builder do
  provider :crest, ENV['CLIENT_ID'], ENV['SECRET_KEY'],
    scope: 'publicData characterLocationRead corporationMembersRead fleetRead'
end
