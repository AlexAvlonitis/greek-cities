require 'greek-cities/city_includes'

module GreekCities
  class City
    CITY_HASH = {
      aha: GreekCities::Cities::AHAIA,
      ait: GreekCities::Cities::AITOLOAKARNANIA,
      arg: GreekCities::Cities::ARGOLIDA,
      ark: GreekCities::Cities::ARKADIA,
      art: GreekCities::Cities::ARTA,
      att: GreekCities::Cities::ATTIKI,
      boi: GreekCities::Cities::BOIOTIA,
      dod: GreekCities::Cities::DODEKANISA,
      dra: GreekCities::Cities::DRAMA,
      evr: GreekCities::Cities::EVROS,
      eyr: GreekCities::Cities::EYRYTANIA,
      eyv: GreekCities::Cities::EYVOIA,
      flo: GreekCities::Cities::FLORINA,
      fok: GreekCities::Cities::FOKIDA,
      fth: GreekCities::Cities::FTHIOTIDA,
      gre: GreekCities::Cities::GREVENA,
      hal: GreekCities::Cities::HALKIDIKI,
      han: GreekCities::Cities::HANIA,
      hio: GreekCities::Cities::HIOS,
      ili: GreekCities::Cities::ILIA,
      ima: GreekCities::Cities::IMATHIA,
      ioa: GreekCities::Cities::IOANNINA,
      ira: GreekCities::Cities::IRAKLEIO,
      kar: GreekCities::Cities::KARDITSA,
      kas: GreekCities::Cities::KASTORIA,
      kav: GreekCities::Cities::KAVALA,
      kef: GreekCities::Cities::KEFALLONIA,
      ker: GreekCities::Cities::KERKIRA,
      kik: GreekCities::Cities::KIKLADES,
      kil: GreekCities::Cities::KILKIS,
      kor: GreekCities::Cities::KORINTHOS,
      koz: GreekCities::Cities::KOZANI,
      lak: GreekCities::Cities::LAKONIA,
      lar: GreekCities::Cities::LARISA,
      las: GreekCities::Cities::LASITHI,
      lef: GreekCities::Cities::LEFKADA,
      les: GreekCities::Cities::LESVOS,
      mag: GreekCities::Cities::MAGNISIA,
      mes: GreekCities::Cities::MESSINIA,
      pel: GreekCities::Cities::PELLA,
      pie: GreekCities::Cities::PIERIA,
      pre: GreekCities::Cities::PREVEZA,
      ret: GreekCities::Cities::RETHYMNO,
      rod: GreekCities::Cities::RODOPI,
      sam: GreekCities::Cities::SAMOS,
      ser: GreekCities::Cities::SERRES,
      thesp: GreekCities::Cities::THESPROTIA,
      thess: GreekCities::Cities::THESSALONIKI,
      tri: GreekCities::Cities::TRIKALA,
      xan: GreekCities::Cities::XANTHI,
      zak: GreekCities::Cities::ZAKINTHOS
    }.freeze

    def self.get_cities(code)
      CITY_HASH[code.downcase.to_sym] || raise('city not found')
    end
  end
end
