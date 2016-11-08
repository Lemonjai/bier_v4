class CreateDods < ActiveRecord::Migration[5.0]
  def change
    create_table :dods do |t|

      t.timestamps
    end
  end
end
