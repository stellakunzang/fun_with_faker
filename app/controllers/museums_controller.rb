class MuseumsController < ApplicationController

  def index
     @museums = Museum.all
  end
end
