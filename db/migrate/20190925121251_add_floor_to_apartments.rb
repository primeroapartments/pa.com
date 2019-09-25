class AddFloorToApartments < ActiveRecord::Migration[5.2]
  def change
    add_column :apartments, :floor, :string
  end
end
