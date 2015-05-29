require './movies.rb'

class FLights

  def initialize(origin, destination)

    @origin = origin
    @destination = destination
    @page = get_data
  end

  def get_data
    HTTParty.get("http://free.rome2rio.com/api/1.2/xml/Search?key=#{ENV[“RIO_ROME_KEY”]}=#{@origin}&dName=#{@destination}")
  end

  def duration
    @page["routes"][0]["duration"]
  end

end
