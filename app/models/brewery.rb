class Brewery < ApplicationRecord
  # Relations with Beer post
  has_many :beerposts
  # Validating the forms
  validates :name, :address, presence: true
end
