class Beerpost < ApplicationRecord
  # Relationship with the colour and brewery
  belongs_to :beercolour
  belongs_to :brewery
  # For image uploading
  mount_uploader :image, ImageUploader
  # Validating the forms
  validates :name, :image, presence: true
end
