set :stage, :production
server '194.67.202.95', user: 'deployer', roles: %w{web app db}
set :branch, 'master'
