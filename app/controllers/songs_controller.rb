class SongsController < ApplicationController

  get '/songs' do
    @songs = Song.all
    erb :'songs/index'
  end

  get '/songs/new' do
    @artists = Artist.all
    erb :'songs/new'
  end

  post "/songs" do
    @song = Song.create(params)
    redirect to "songs/#{@song.id}"
  end

  patch '/songs/:id' do
    binding.pry
    @song = Song.find(params[:id])
  end

  get '/songs/:id' do
    @song = Song.find(params[:id])
    erb :'songs/show'
  end


  get '/songs/:id/edit' do
    @song = Song.find(params[:id])
    @artists = Artist.all
    erb :'songs/edit'
  end






end
