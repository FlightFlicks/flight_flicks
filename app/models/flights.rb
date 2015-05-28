require './movies.rb'

class FLight

  def initialize(origin, destination)

    @origin = origin
    @destination = destination
    @page = get_data
  end

  def get_data
    HTTParty.get("")
  end

  def duration
    @page["routes"][0]["duration"]
  end

end
