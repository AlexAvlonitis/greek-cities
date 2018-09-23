lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'greek-cities/version'

Gem::Specification.new do |s|
  s.name          = 'greek-cities'
  s.version       = GreekCities::VERSION
  s.date          = '2016-09-30'
  s.summary       = 'A list of all greek states and cities'
  s.description   = 'A gem with the most complete city/states ' \
                    'list of Greece diplayed in Greek'
  s.authors       = ['Alex Avlonitis']
  s.email         = 'avlonitis@msn.com'
  s.files         = Dir.glob('{bin,lib}/**/*') + %w[README.md]
  s.require_path  = 'lib'
  s.homepage      = 'https://github.com/AlexAvlonitis/greek-cities'
  s.license       = 'MIT'

  s.add_development_dependency 'rspec'
end
