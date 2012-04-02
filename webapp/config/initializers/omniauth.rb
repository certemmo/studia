Providers = YAML.load_file Rails.root.join 'config', 'providers.yml'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, Providers['twitter']['key'], Providers['twitter']['secret']
  provider :github, Providers['github']['key'], Providers['github']['secret']

end

