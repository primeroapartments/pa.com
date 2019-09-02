class AddPersonsToApartments < ActiveRecord::Migration[5.2]
  def change
    add_column :apartments, :persons, :integer
  end
end
