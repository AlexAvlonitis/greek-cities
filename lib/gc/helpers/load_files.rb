# frozen_string_literal: true

require 'yaml'

module GC
  module Helpers
    class LoadFiles
      def self.load(file)
        YAML.load_file(GC::APP_PATH + file)
      end
    end
  end
end
