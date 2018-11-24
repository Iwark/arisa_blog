role :app, %w{arisa_blog}
role :web, %w{arisa_blog}
role :db,  %w{arisa_blog}
set :stage, :production
set :rails_env, :production
set :deploy_to, '/home/ec2-user/arisa_blog'
set :default_env, {
  rbenv_root: "/home/ec2-user/.rbenv",
  path: "/home/ec2-user/.rbenv/shims:/home/ec2-user/.rbenv/bin:$PATH",
}
