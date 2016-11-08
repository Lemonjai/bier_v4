class Brewery < ApplicationRecord
  # Relations with Beer post
  has_many :beerposts
  # For image uploading
  mount_uploader :image, ImageUploader
  # Validating the forms
  validates :name, :address, :image, presence: true
end
