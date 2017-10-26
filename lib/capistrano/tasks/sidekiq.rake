# For capistrano 3
namespace :sidekiq do
  task :quiet do
    on roles(:app) do
      puts capture("pgrep -f 'sidekiq' | xargs kill -TSTP") 
    end
  end
  task :restart do
    on roles(:app) do
      execute :sudo, :initctl, :restart, :sidekiq
    end
  end
end

after 'deploy:starting', 'sidekiq:quiet'
after 'deploy:reverted', 'sidekiq:restart'
after 'deploy:published', 'sidekiq:restart'

# If you wish to use Inspeqtor to monitor Sidekiq
# https://github.com/mperham/inspeqtor/wiki/Deployments
namespace :inspeqtor do
  task :start do
    on roles(:app) do
      execute :inspeqtorctl, :start, :deploy
    end
  end
  task :finish do
    on roles(:app) do
      execute :inspeqtorctl, :finish, :deploy
    end
  end
end

before 'deploy:starting', 'inspeqtor:start'
after 'deploy:finished', 'inspeqtor:finish'