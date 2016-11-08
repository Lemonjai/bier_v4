class AddBeercolourIdToBeerpost < ActiveRecord::Migration[5.0]
  def change
    add_column :beerposts, :beercolour_id, :integer
  end
end
