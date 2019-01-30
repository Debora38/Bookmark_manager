require 'sinatra/base'
require_relative 'bookmarks'

class Bookmarks_Manager < Sinatra::Base

  enable :sessions

  set :session_secret, "secret"

  get'/' do
    redirect '/bookmarks'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  get '/bookmarks/new' do
    erb :'bookmarks/new'
  end

  post '/bookmarks' do
    Bookmark.create(params[:url])
    redirect '/bookmarks'
  end

  run! if app_file == $0

end
