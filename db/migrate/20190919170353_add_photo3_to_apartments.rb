class AddPhoto3ToApartments < ActiveRecord::Migration[5.2]
  def change
    add_column :apartments, :photo3, :string
  end
end
