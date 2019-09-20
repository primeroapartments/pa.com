class RemovePhotoFromApartments < ActiveRecord::Migration[5.2]
  def change
    remove_column :apartments, :photo, :string
  end
end
