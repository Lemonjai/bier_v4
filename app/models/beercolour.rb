class Beercolour < ApplicationRecord
  # Relations with Beer post
  has_many :beerposts
  # Validating the forms
  validates :name, presence: true
end
