require 'greek-cities/cities/aitoloakarnania'
require 'greek-cities/cities/argolida'

module GreekCities
  class City
    def self.get_cities(code)
      case code
      when 'AIT', 'ait' then GreekCities::Cities::AITOLOAKARNANIA
      when 'ARG', 'arg' then GreekCities::Cities::ARGOLIDA
      else
        puts 'city not found'
      end
    end
  end
end
