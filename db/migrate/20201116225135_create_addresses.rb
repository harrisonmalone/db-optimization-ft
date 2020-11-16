class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :suburb
      t.string :postcode
      t.string :city
      t.string :country
      t.references :home, null: false, foreign_key: true

      t.timestamps
    end
  end
end
