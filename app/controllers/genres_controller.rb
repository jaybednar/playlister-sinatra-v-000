class GenresController < ApplicationController

  get '/genres' do
    @genres = Genre.all
    erb :'/genres/index'
  end

  get '/genres/new' do

    erb :'/genres/new'
  end

  post '/genres' do
    @genre = Genre.create(params[:song])
    redirect "/genres/#{@genre.id}"
  end

  get '/genres/:slug' do
    @genre = Genre.find_by_slug(params[:slug])
    erb :'/genres/show'
  end

end
