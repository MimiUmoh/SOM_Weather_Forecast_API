require_relative 'services/current_weather'
require_relative 'services/five_day_weather'

class Weather
    def current
      CurrentWeather.new
    end
    def five_day
      FiveDayWeather.new
    end
end