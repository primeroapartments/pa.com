class Apartment < ApplicationRecord
  has_one :location

  validates_presence_of(
    :name,
    :address,
    :persons,
    :bathrooms,
    :description,
    :apartment_link,
    :location,
    :price,
  )

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
