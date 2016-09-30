require 'greek-cities/version'

Gem::Specification.new do |s|
  s.name          = 'greek-cities'
  s.version       = GreekCities::VERSION
  s.date          = '2016-09-30'
  s.summary       = "A list of all greek states and cities"
  s.description   = "A gem with the most complete list of city/states of Greece written in Greek"
  s.authors       = ["Alex Avlonitis"]
  s.email         = 'avlonitis@msn.com'
  s.files         = Dir["#{File.dirname(__FILE__)}/lib/**/*.rb"].each { |f| load(f) }
  s.homepage      = 'http://rubygems.org/gems/greek-cities'
  s.license       = 'MIT'
end
