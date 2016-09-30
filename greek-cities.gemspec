# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name          = 'greek-cities'
  s.version       = '1.0.0'
  s.date          = '2016-09-30'
  s.summary       = "A list of all greek states and cities"
  s.description   = "A gem with the most complete list of city/states of Greece written in Greek"
  s.authors       = ["Alex Avlonitis"]
  s.email         = 'avlonitis@msn.com'
  s.files         = `git ls-files -z`.split("\x0")
  s.require_paths = ["lib"]
  s.homepage      = 'http://rubygems.org/gems/greek-cities'
  s.license       = 'MIT'
end
