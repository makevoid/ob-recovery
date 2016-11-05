require_relative 'env'

DB = {}
DB[:key_shown] = false

get "/" do
  haml :index
end
