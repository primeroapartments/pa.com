class Apartment < ApplicationRecord

  validates_presence_of(
    :name,
    :address,
    :persons,
    :bathrooms,
    :description,
    :apartment_link,
    :location,
    :price,
    :photo1,
    :photo2,
    :photo3,
    :photo4,
    :size,
    :floor,
  )

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
