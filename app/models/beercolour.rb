class Beercolour < ApplicationRecord
  # Relations with Beer post
  has_many :beerposts
  # For image uploading
  mount_uploader :image, ImageUploader
  # Validating the forms
  validates :name, presence: true
end
