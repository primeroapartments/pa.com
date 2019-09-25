class AddPhoto4ToApartments < ActiveRecord::Migration[5.2]
  def change
    add_column :apartments, :photo4, :string
  end
end
