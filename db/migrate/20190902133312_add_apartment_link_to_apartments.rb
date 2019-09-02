class AddApartmentLinkToApartments < ActiveRecord::Migration[5.2]
  def change
    add_column :apartments, :apartment_link, :string
  end
end
