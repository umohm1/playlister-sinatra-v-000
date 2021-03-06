class ArtistsController < ApplicationController

    get '/artists' do
      @artists = Artist.all
      erb :'artists/index'
    end


    get '/artists/new' do
      erb :'artists/new' #show new artists view
    end
    
    get '/artists/:slug' do
      @artist = Artist.find_by_slug(params[:slug])
      erb :'artists/show'
    end


    post '/artists' do
    @artist = Artist.create(params[:artist])
    redirect "/artists/#{@artist.id}"
    end


    get '/artists/:id' do
      @artist = Artist.find(params[:id]) #define instance variable for view
      erb :'artists/show' #show single artist view
    end


    
end
