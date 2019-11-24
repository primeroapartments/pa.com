require "uri"
require "net/http"

class Api::V1::ApartmentsController < Api::V1::BaseController
  def index

    url = URI("https://capi.tokeet.com/v1/rental?account=1498576319.9833")

    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true

    request = Net::HTTP::Get.new(url)
    request["Authorization"]=ENV['TOKEET_API']
    request.body = "{}"

    response = https.request(request)
    puts response.read_body
  end

  def all
    render json: Apartment.all
  end

end
