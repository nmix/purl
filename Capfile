require 'capistrano/setup'
require 'capistrano/deploy'

require 'capistrano/rbenv'
set :rbenv_type, :user
set :rbenv_ruby, '2.4.3'

require 'capistrano/bundler'
require 'capistrano/rails'
require 'capistrano/rails/console'
require 'capistrano/passenger'
require 'capistrano/yarn'

# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
