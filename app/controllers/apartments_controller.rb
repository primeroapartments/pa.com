class ApartmentsController < ApplicationController

#fake database

  APARTMENTS = {
    1 => { location: "Sheffield", apartment: "1A", stars: "3" },
    2 => { location: "Cardiff", apartment: "2", stars: "4" },
    3 => { location: "London", apartment: "5", stars: "2" }
  }

  def index
    if params[:location].blank?
      @apartments = APARTMENTS
    else
      @apartments = APARTMENTS.select do |id, apartment|
        apartment[:location] == params[:location]
      end
    end
  end
end
