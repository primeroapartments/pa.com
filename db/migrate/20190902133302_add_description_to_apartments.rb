class AddDescriptionToApartments < ActiveRecord::Migration[5.2]
  def change
    add_column :apartments, :description, :text
  end
end
