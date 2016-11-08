class Beerpost < ApplicationRecord
  # Relationship with the colour and brewery
  belongs_to :beercolour
  belongs_to :brewery
  # Validating the forms
  validates :name, presence: true
end
