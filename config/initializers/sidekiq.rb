Sidekiq.configure_server do |config|
  config.redis = { url: ENV['REDIS_PROVIDER'], namespace: "app3_sidekiq_#{Rails.env}" }
end

Sidekiq.configure_client do |config|
  config.redis = { url: ENV['REDIS_PROVIDER'], namespace: "app3_sidekiq_#{Rails.env}" }
end

## or use config.yml file
set :sidekiq_config, "#{current_path}/config/sidekiq.yml"