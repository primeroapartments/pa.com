class Apartment < ApplicationRecord
  validates_presence_of(:id, :name, :address, :persons, :bathrooms,
    :description, :apartment_link)

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
