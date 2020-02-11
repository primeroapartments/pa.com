class TokeetApartment < Struct.new(:name);end

class ApartmentsController < ApplicationController
  def locations
    @apartments = Apartment.geocoded #returns flats with coordinates

    @markers = @apartments.map do |apartment|
      {
        lat: apartment.latitude,
        lng: apartment.longitude,
        # infoWindow: render_to_string(partial: "info_window", locals: { apartment: apartment })
        # image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }
    end
  end

  def sheffield
    @apartments = Tokeet.new("Sheffield").rentals
  end

  def cardiff
    @apartments = Tokeet.new("Cardiff").rentals
  end

  def basingstoke
    @apartments = Tokeet.new("Basingstoke").rentals
  end

  private
  def apartment_params
    params.require(:apartment).permit(:name, :address, :persons,
      :bathrooms, :description, :apartment_link, :location, :price, :photo1,
      :photo2, :photo3, :photo4, :size, :floor)
  end
end
