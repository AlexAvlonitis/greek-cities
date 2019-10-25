# frozen_string_literal: true

module GC
  module States
    def get_state_name(state)
      states_hash = states.map(&:reverse).to_h
      states_hash[state]
    end

    def states
      @states ||= GC::Helpers::LoadFiles.load('states.yml')
    end
  end
end
