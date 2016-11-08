class DodController < ApplicationController
  def index
    @beerposts = Beerpost.all
  end
end
