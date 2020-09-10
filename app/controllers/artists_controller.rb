class ArtistsController < ApplicationController

  def show
     @artist = Artist.find(params[:id])
     binding.pry
  end
end
