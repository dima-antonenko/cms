set :application, 'laston.dima-antonenko.lclients.ru'
set :repo_url, 'https://github.com/dima-antonenko/cms.git'

ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call

set :deploy_to, '/home/hosting_dima-antonenko/projects/laston'

set :linked_files, %w{config/database.yml}

  
role :app, "hosting_dima-antonenko:xaPFjibKdW@sulfur.locum.ru"

set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

#set :unicorn_start_cmd, "(cd #{deploy_to}/current; rvm use #{rvm_ruby_string} do bundle exec unicorn_rails -Dc #{unicorn_conf})"


# - for unicorn - #
#namespace :deploy do
#  desc "Start application"
#  task :start, :roles => :app do
#    run unicorn_start_cmd
#  end

#  desc "Stop application"
#  task :stop, :roles => :app do
#    run "[ -f #{unicorn_pid} ] && kill -QUIT `cat #{unicorn_pid}`"
 # end

 # desc "Restart Application"
#  task :restart, :roles => :app do
  #  run "[ -f #{unicorn_pid} ] && kill -USR2 `cat #{unicorn_pid}` || #{unicorn_start_cmd}"
  #end
#end