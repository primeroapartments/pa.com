class AddPhoto4ToApartments < ActiveRecord::Migration[5.2]
  def change
    add_column :apartments, :photo, :string
  end
end
