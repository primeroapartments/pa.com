class Tokeet
  def initialize(city)
    @city = city
  end

  def rentals
    @apartments = parse_response.
      yield_self(&method(:filter)).
      yield_self(&method(:present))
  end

  class Apartment
    attr_reader :name, :description

    def initialize(name, description)
      @name = name
      @description = description
    end
  end

  private

  def url
    URI("https://capi.tokeet.com/v1/rental?account=1498576319.9833")
  end

  def https
    @https ||= Net::HTTP.new(url.host, url.port).tap do |https|
      https.use_ssl = true
    end
  end

  def request
    @request ||= Net::HTTP::Get.new(url).tap do |request|
      request["Authorization"]=ENV['TOKEET_API']
      request.body = "{}"
    end
  end

  def response
    https.request(request)
  end

  def parse_response
    JSON.parse(response.read_body).fetch("data")
  end

  def filter(apartments)
    apartments.select do |apartment|
      apartment["address"]["city"]==@city
    end
  end

  def present(apartments)
    apartments.map do |apartment|
      Apartment.new(apartment["name"],apartment["description"])
    end
  end
end
