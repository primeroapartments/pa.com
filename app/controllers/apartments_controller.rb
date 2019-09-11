class ApartmentsController < ApplicationController

  def index
    @apartments = Apartment.where.not(latitude: nil, longitude: nil)

    @markers = @apartments.map do |apartment|
      {
        lat: apartment.latitude,
        lng: apartment.longitude
        # infoWindow: render_to_string(partial: "info_window", locals: { apartment: apartment })
        # image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }
      # en d
    end
  end

  def show
    @apartments = Apartment.find(params[:id])
  end

  def new
    @apartment = Apartment.new
  end

  def create
    @apartment = Aapartment.new(apartment_params)
    @apartment.save
    redirect_to @apartment
  end

  def edit
    @apartment = Apartment.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private
  def apartment_params
    params.require(:apartment).permit(:id, :name, :address, :persons,
      :bathrooms, :description, :apartment_link)
  end
end
