class ApartmentsController < ApplicationController
  def locations
    @apartments = Apartment.geocoded #returns flats with coordinates

    @markers = @apartments.map do |apartment|
      {
        lat: apartment.latitude,
        lng: apartment.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { apartment: apartment })
      }
  end
end

  def index
    @apartments = Apartment.all
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
