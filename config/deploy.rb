set :application, 'purl'
set :repo_url, 'git@github.com:kulikovsa86/purl.git'

set :deploy_to, '/home/deploy/purl'

set :linked_files, %w{config/database.yml config/secrets.yml db/production.sqlite3}
set :linked_dirs, %w{log public/files tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}