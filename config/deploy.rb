set :repo_url, 'git@github.com:Iwark/arisa_blog.git'
set :rbenv_ruby, '2.4.1'
set :branch, ENV['BRANCH'] || "master"
# Default value for :linked_files is []
set :linked_files, %w{config/database.yml config/secrets.yml}
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system public/assets public/uploads}
set :default_stage, "production"
set :whenever_identifier, ->{ "#{fetch(:application)}_#{fetch(:stage)}" }
set :bundle_env_variables, { 'NOKOGIRI_USE_SYSTEM_LIBRARIES' => 1 }
# set :linked_dirs, (fetch(:linked_dirs) + ['tmp/pids'])
set :unicorn_rack_env, "production"
set :unicorn_config_path, 'config/unicorn.rb'
set :bundle_binstubs, nil

namespace :deploy do
  desc 'Restart application'
  task :restart do
    invoke 'unicorn:restart'
  end
  after :publishing, :restart
  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      within release_path do
        with rails_env: fetch(:rails_env) do
          # execute :rake, 'cache:clear'
        end
      end
    end
  end
end
