set :stage, :production
server '178.20.40.2', user: 'zoid', roles: %w{web app db}
set :branch, 'master'
