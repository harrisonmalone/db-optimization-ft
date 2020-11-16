class CreateHomes < ActiveRecord::Migration[6.0]
  def change
    create_table :homes do |t|
      t.string :name
      t.integer :price_per_day
      t.string :rooms
      t.string :guests

      t.timestamps
    end
  end
end
