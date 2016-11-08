class Beerpost < ApplicationRecord
  belongs_to :beercolour
  belongs_to :brewery
end
