class AddPhoto2ToApartments < ActiveRecord::Migration[5.2]
  def change
    add_column :apartments, :photo2, :string
  end
end
