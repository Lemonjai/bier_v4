class DodController < ApplicationController
  def index
    @beerposts = Beerpost.all
  end

  def dashboard
    @beerposts = Beerpost.all
    @beercolours = Beercolour.all
    @breweries = Brewery.all
  end
end
