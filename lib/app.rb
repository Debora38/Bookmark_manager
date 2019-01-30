require 'sinatra/base'
require_relative 'bookmarks'

class Bookmarks_Manager < Sinatra::Base

  enable :sessions


  set :method_override, true

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
    Bookmark.create(params[:title], params[:url])
    redirect '/bookmarks'
  end

  delete "/bookmarks/:id" do |id|
    Bookmark.delete(id)
    redirect '/bookmarks'
  end

  get '/bookmarks/:id/edit' do
    @bookmark = Bookmark.find(params[:id])[0]
    erb :'bookmarks/edit'
  end

  patch "/bookmarks/:id" do
    Bookmark.edit(params[:id], params[:title], params[:url])
    redirect '/bookmarks'
  end

  run! if app_file == $0

end
