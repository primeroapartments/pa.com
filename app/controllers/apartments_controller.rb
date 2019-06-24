class ApartmentsController < ApplicationController

  def index
    @apartments = Apartment.where.not(latitude: nil, longitude: nil)

    @markers = @apartments.map do |apartment|
      {
        lat: apartment.latitude,
        lng: apartment.longitude
      }
    end

  def new
    @apartments = Apartment.new
  end

  end
end
