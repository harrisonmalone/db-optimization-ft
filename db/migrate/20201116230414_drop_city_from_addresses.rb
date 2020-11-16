class DropCityFromAddresses < ActiveRecord::Migration[6.0]
  def change
    remove_column :addresses, :city
  end
end
