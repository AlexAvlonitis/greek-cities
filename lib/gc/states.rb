# frozen_string_literal: true

module GC
  module States
    STATES = [
      %w[Αιτωλοακαρνανίας ait],
      %w[Αργολίδας arg],
      %w[Αρκαδίας ark],
      %w[Άρτας art],
      %w[Αττικής att],
      %w[Αχαΐας aha],
      %w[Βοιωτίας boi],
      %w[Γρεβενών gre],
      %w[Δράμας dra],
      %w[Δωδεκανήσου dod],
      %w[Έβρου evr],
      %w[Ευβοίας eyv],
      %w[Ευρυτανίας eyr],
      %w[Ζακύνθου zak],
      %w[Ηλείας ili],
      %w[Ημαθίας ima],
      %w[Ηρακλείου ira],
      %w[Θεσπρωτίας thesp],
      %w[Θεσσαλονίκης thess],
      %w[Ιωαννίνων ioa],
      %w[Καβάλας kav],
      %w[Καρδίτσας kar],
      %w[Καστοριάς kas],
      %w[Κερκύρας ker],
      %w[Κεφαλληνίας kef],
      %w[Κιλκίς kil],
      %w[Κοζάνης koz],
      %w[Κορινθίας kor],
      %w[Κυκλάδων kik],
      %w[Λακωνίας lak],
      %w[Λάρισας lar],
      %w[Λασιθίου las],
      %w[Λέσβου les],
      %w[Λευκάδας lef],
      %w[Μαγνησίας mag],
      %w[Μεσσηνίας mes],
      %w[Ξάνθης xan],
      %w[Πέλλας pel],
      %w[Πιερίας pie],
      %w[Πρεβέζης pre],
      %w[Ρεθύμνης ret],
      %w[Ροδόπης rod],
      %w[Σάμου sam],
      %w[Σερρών ser],
      %w[Τρικάλων tri],
      %w[Φθιώτιδας fth],
      %w[Φλώρινας flo],
      %w[Φωκίδας fok],
      %w[Χαλκιδικής hal],
      %w[Χανίων han],
      %w[Χίου hio]
    ].freeze

    def get_state_name(state)
      states_hash = states.map(&:reverse).to_h
      states_hash[state]
    end

    def states
      STATES
    end
  end
end
