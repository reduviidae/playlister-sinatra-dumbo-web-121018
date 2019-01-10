class SongsController < ApplicationController

  get '/songs' do
    @songs = Song.all
    erb :'songs/index'
    binding.pry
  end

  get '/songs/:id' do
    puts "this is the show page"
  end

end
