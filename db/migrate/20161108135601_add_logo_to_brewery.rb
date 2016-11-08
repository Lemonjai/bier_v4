class AddLogoToBrewery < ActiveRecord::Migration[5.0]
  def change
    add_column :breweries, :logo, :string
  end
end
