class Flight
  def initialize(origin, destination)

    @origin = origin
    @destination = destination
    @page = get_data
  end

  def get_data
    HTTParty.get("http://free.rome2rio.com/api/1.2/json/Search?key=#{ENV['RIO_ROME_KEY']}&oName=#{@origin}&dName=#{@destination}")
  end

  def duration
    total = 0
    @page["routes"][0]["segments"].each do |s|
      if s["kind"] == "flight"
        total = s["duration"]
      end
    end
    p total
  end

end
