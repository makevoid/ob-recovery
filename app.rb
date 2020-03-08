require_relative 'env'

# ruby sinatra webapp

# simplest in memory store
DB = {}
DB[:key_shown] = false

get "/" do
  haml :index
end
