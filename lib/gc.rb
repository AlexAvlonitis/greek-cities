# frozen_string_literal: true

require 'gc/helpers/load_files'
require 'gc/states'
require 'gc/city'

module GC
  APP_PATH = File.dirname(__FILE__) + '/gc/'

  extend GC::City
  extend GC::States
end
