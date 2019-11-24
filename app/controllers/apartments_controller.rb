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
    @apartments = Apartment.where(location: "sheffield")
  end

  def cardiff
    @apartments = Apartment.where(location: "cardiff")
  end

  def basingstoke
    @apartments = Apartment.where(location: "basingstoke")
  end

  def index
    @apartments = Apartment.all
  end

  def show
    @apartments = Apartment.where(params[:location])
  end

  def new
    @apartment = Apartment.new
  end

  def create
    @apartment = Apartment.new(apartment_params)
    @apartment.save
    redirect_to apartments_path
    # if @apartment.location == sheffield
    #   @apartment.save_to sheffield_path
    # elsif @apartment.location == cardiff
    #   save to cardiff_path
    # else
    #   @apartment.save_to basingstoke_path
    # end
    # end
  end

  def edit
    @apartment = Apartment.find(params[:id])
  end

  def update
    @apartment = Apartment.find(params[:id])
    @apartment.update!(apartment_params)
    redirect_to apartments_path
  end

  def destroy
    @apartment = Apartment.find(params[:id])
    @apartment.destroy
    redirect_to apartments_path
  end

  private
  def apartment_params
    params.require(:apartment).permit(:name, :address, :persons,
      :bathrooms, :description, :apartment_link, :location, :price, :photo1,
      :photo2, :photo3, :photo4, :size, :floor)
  end
end
