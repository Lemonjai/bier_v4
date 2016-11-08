class AddImageToBrewery < ActiveRecord::Migration[5.0]
  def change
    add_column :breweries, :image, :string
  end
end
