class ApartmentsController < ApplicationController
  def locations
    @apartments = Apartment.geocoded #returns flats with coordinates

    @markers = @apartments.map do |apartment|
      {
        lat: apartment.latitude,
        lng: apartment.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { apartment: apartment })
        # image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }
    end
  end

  def sheffield
    @apartments = Apartment.find(sheffield)
  end

  def cardiff
    @apartments = Apartment.where(location: "cardiff")
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
    @apartment = Apartment.new(apartment_params)
    if @apartment.location == sheffield
      @apartment.save to sheffield.html.erb
    elsif @apartment.location == cardiff
      saveto cardiff.html.erb
    else
      save to basingstoke.html.erb

    redirect_to @apartment
    end
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
