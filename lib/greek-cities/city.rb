require 'greek-cities/cities/aitoloakarnania'

module GreekCities
  class City
    def self.get_cities(code)
      case code
      when 'AIT', 'ait' then GreekCities::Cities::AIT
      else
        puts 'city not found'
      end
    end
  end
end
