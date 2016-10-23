require 'greek-cities/states'
require 'greek-cities/city'

module GC
  def self.states
    GreekCities::STATES
  end

  def self.cities(code)
    GreekCities::City.get_cities(code)
  end

  def self.get_state_name(state)
    states_hash = GreekCities::STATES.map(&:reverse).to_h
    states_hash[state]
  end

  def self.get_city_name(state_code, city)
    cities = GreekCities::City.get_cities(state_code)
    cities_hash = cities.map(&:reverse).to_h
    cities_hash[city]
  end
end
