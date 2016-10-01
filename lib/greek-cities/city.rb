require 'greek-cities/city_includes'

module GreekCities
  class City
    def self.get_cities(code)
      case code
      when 'AHA', 'aha' then GreekCities::Cities::AHAIA
      when 'AIT', 'ait' then GreekCities::Cities::AITOLOAKARNANIA
      when 'ARG', 'arg' then GreekCities::Cities::ARGOLIDA
      when 'ARK', 'ark' then GreekCities::Cities::ARKADIA
      when 'ART', 'art' then GreekCities::Cities::ARTA
      when 'ATT', 'att' then GreekCities::Cities::ATTIKI
      when 'BOI', 'boi' then GreekCities::Cities::BOIOTIA
      when 'DOD', 'dod' then GreekCities::Cities::DODEKANISA
      when 'DRA', 'dra' then GreekCities::Cities::DRAMA
      when 'EVR', 'evr' then GreekCities::Cities::EVROS
      when 'EYR', 'eyr' then GreekCities::Cities::EYRYTANIA
      when 'EYV', 'eyv' then GreekCities::Cities::EYVOIA
      when 'FLO', 'flo' then GreekCities::Cities::FLORINA
      when 'FOK', 'fok' then GreekCities::Cities::FOKIDA
      when 'FTH', 'fth' then GreekCities::Cities::FTHIOTIDA
      when 'GRE', 'gre' then GreekCities::Cities::GREVENA
      when 'HAL', 'hal' then GreekCities::Cities::HALKIDIKI
      when 'HAN', 'han' then GreekCities::Cities::HANIA
      when 'HIO', 'hio' then GreekCities::Cities::HIOS
      when 'ILI', 'ili' then GreekCities::Cities::ILIA
      when 'IMA', 'ima' then GreekCities::Cities::IMATHIA
      when 'IOA', 'ioa' then GreekCities::Cities::IOANNINA
      when 'IRA', 'ira' then GreekCities::Cities::IRAKLEIO
      when 'KAR', 'kar' then GreekCities::Cities::KARDITSA
      when 'KAS', 'kas' then GreekCities::Cities::KASTORIA
      when 'KAV', 'kav' then GreekCities::Cities::KAVALA
      when 'KEF', 'kef' then GreekCities::Cities::KEFALLONIA
      when 'KER', 'ker' then GreekCities::Cities::KERKIRA
      when 'KIK', 'kik' then GreekCities::Cities::KIKLADES
      when 'KIL', 'kil' then GreekCities::Cities::KILKIS
      when 'KOR', 'kor' then GreekCities::Cities::KORINTHOS
      when 'KOZ', 'koz' then GreekCities::Cities::KOZANI
      when 'LAK', 'lak' then GreekCities::Cities::LAKONIA
      when 'LAR', 'lar' then GreekCities::Cities::LARISA
      when 'LAS', 'las' then GreekCities::Cities::LASITHI
      when 'LEF', 'lef' then GreekCities::Cities::LEFKADA
      when 'LES', 'les' then GreekCities::Cities::LESVOS
      when 'MAG', 'mag' then GreekCities::Cities::MAGNISIA
      when 'MES', 'mes' then GreekCities::Cities::MESSINIA
      when 'PEL', 'pel' then GreekCities::Cities::PELLA
      when 'PIE', 'pie' then GreekCities::Cities::PIERIA
      when 'PRE', 'pre' then GreekCities::Cities::PREVEZA
      when 'RET', 'ret' then GreekCities::Cities::RETHYMNO
      when 'ROD', 'rod' then GreekCities::Cities::RODOPI
      when 'SAM', 'sam' then GreekCities::Cities::SAMOS
      when 'SER', 'ser' then GreekCities::Cities::SERRES
      when 'THESP', 'thesp' then GreekCities::Cities::THESPROTIA
      when 'THESS', 'thess' then GreekCities::Cities::THESSALONIKI
      when 'TRI', 'tri' then GreekCities::Cities::TRIKALA
      when 'XAN', 'xan' then GreekCities::Cities::XANTHI
      when 'ZAK', 'zak' then GreekCities::Cities::ZAKINTHOS
      else
        puts 'city not found'
      end
    end
  end
end
