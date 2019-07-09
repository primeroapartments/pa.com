class ApartmentsController < ApplicationController

  def index
    @apartments = Apartment.where.not(latitude: nil, longitude: nil)

    @markers = @apartments.map do |apartment|
      {
        lat: apartment.latitude,
        lng: apartment.longitude
      }
    end
  end

  def show
    @apartments = Apartment.all
  end

  def new
    @apartment = Apartment.new
  end

  def create
  end

  def edit
    @apartment = Apartment.find(params[:id])
  end

  def update
  end

  def destroy
  end
end
