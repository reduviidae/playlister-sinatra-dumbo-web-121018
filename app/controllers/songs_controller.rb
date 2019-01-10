class SongsController < ApplicationController

  get '/songs' do
    @songs = Song.all
    erb :'songs/index'
  end

  get '/songs/new' do
    @artists = Artist.all
  end

  post "songs" do
    binding.pry
  end

  get '/songs/:id' do
    @songs = Song.find(params[:id])
    erb :'songs/show'
  end

end
