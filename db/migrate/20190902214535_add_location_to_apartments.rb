class AddLocationToApartments < ActiveRecord::Migration[5.2]
  def change
    add_column :apartments, :location, :string
  end
end
