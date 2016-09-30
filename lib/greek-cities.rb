require 'greek-cities/states'
require 'greek-cities/city'

module GC
  def self.states
    GreekCities::STATES
  end

  def self.cities(code)
    GreekCities::City.get_cities(code)
  end
end
