class AddPhoto1ToApartments < ActiveRecord::Migration[5.2]
  def change
    add_column :apartments, :photo1, :string
  end
end
