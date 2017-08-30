set :stage, :production
server '185.58.205.28', user: 'deploy', roles: %w{web app db}
set :branch, 'master'