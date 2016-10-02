require 'greek-cities/city_includes'

module GreekCities
  class City
    def self.get_cities(code)
      code.downcase!
      case code
      when 'aha' then GreekCities::Cities::AHAIA
      when 'ait' then GreekCities::Cities::AITOLOAKARNANIA
      when 'arg' then GreekCities::Cities::ARGOLIDA
      when 'ark' then GreekCities::Cities::ARKADIA
      when 'art' then GreekCities::Cities::ARTA
      when 'att' then GreekCities::Cities::ATTIKI
      when 'boi' then GreekCities::Cities::BOIOTIA
      when 'dod' then GreekCities::Cities::DODEKANISA
      when 'dra' then GreekCities::Cities::DRAMA
      when 'evr' then GreekCities::Cities::EVROS
      when 'eyr' then GreekCities::Cities::EYRYTANIA
      when 'eyv' then GreekCities::Cities::EYVOIA
      when 'flo' then GreekCities::Cities::FLORINA
      when 'fok' then GreekCities::Cities::FOKIDA
      when 'fth' then GreekCities::Cities::FTHIOTIDA
      when 'gre' then GreekCities::Cities::GREVENA
      when 'hal' then GreekCities::Cities::HALKIDIKI
      when 'han' then GreekCities::Cities::HANIA
      when 'hio' then GreekCities::Cities::HIOS
      when 'ili' then GreekCities::Cities::ILIA
      when 'ima' then GreekCities::Cities::IMATHIA
      when 'ioa' then GreekCities::Cities::IOANNINA
      when 'ira' then GreekCities::Cities::IRAKLEIO
      when 'kar' then GreekCities::Cities::KARDITSA
      when 'kas' then GreekCities::Cities::KASTORIA
      when 'kav' then GreekCities::Cities::KAVALA
      when 'kef' then GreekCities::Cities::KEFALLONIA
      when 'ker' then GreekCities::Cities::KERKIRA
      when 'kik' then GreekCities::Cities::KIKLADES
      when 'kil' then GreekCities::Cities::KILKIS
      when 'kor' then GreekCities::Cities::KORINTHOS
      when 'koz' then GreekCities::Cities::KOZANI
      when 'lak' then GreekCities::Cities::LAKONIA
      when 'lar' then GreekCities::Cities::LARISA
      when 'las' then GreekCities::Cities::LASITHI
      when 'lef' then GreekCities::Cities::LEFKADA
      when 'les' then GreekCities::Cities::LESVOS
      when 'mag' then GreekCities::Cities::MAGNISIA
      when 'mes' then GreekCities::Cities::MESSINIA
      when 'pel' then GreekCities::Cities::PELLA
      when 'pie' then GreekCities::Cities::PIERIA
      when 'pre' then GreekCities::Cities::PREVEZA
      when 'ret' then GreekCities::Cities::RETHYMNO
      when 'rod' then GreekCities::Cities::RODOPI
      when 'sam' then GreekCities::Cities::SAMOS
      when 'ser' then GreekCities::Cities::SERRES
      when 'thesp' then GreekCities::Cities::THESPROTIA
      when 'thess' then GreekCities::Cities::THESSALONIKI
      when 'tri' then GreekCities::Cities::TRIKALA
      when 'xan' then GreekCities::Cities::XANTHI
      when 'zak' then GreekCities::Cities::ZAKINTHOS
      else
        puts 'city not found'
      end
    end
  end
end
