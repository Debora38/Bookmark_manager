require 'sinatra/base'

class Bookmarks < Sinatra::Base

  enable :sessions

  set :session_secret, "secret"

  get'/' do
    erb(:index)
  end

end
