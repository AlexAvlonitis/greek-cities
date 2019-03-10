# frozen_string_literal: true

Dir[File.dirname(__FILE__) + "/cities/*.rb"].each { |file| require file }

module GC
  module City
    CITY_HASH = {
      aha: GC::Cities::AHAIA,
      ait: GC::Cities::AITOLOAKARNANIA,
      arg: GC::Cities::ARGOLIDA,
      ark: GC::Cities::ARKADIA,
      art: GC::Cities::ARTA,
      att: GC::Cities::ATTIKI,
      boi: GC::Cities::BOIOTIA,
      dod: GC::Cities::DODEKANISA,
      dra: GC::Cities::DRAMA,
      evr: GC::Cities::EVROS,
      eyr: GC::Cities::EYRYTANIA,
      eyv: GC::Cities::EYVOIA,
      flo: GC::Cities::FLORINA,
      fok: GC::Cities::FOKIDA,
      fth: GC::Cities::FTHIOTIDA,
      gre: GC::Cities::GREVENA,
      hal: GC::Cities::HALKIDIKI,
      han: GC::Cities::HANIA,
      hio: GC::Cities::HIOS,
      ili: GC::Cities::ILIA,
      ima: GC::Cities::IMATHIA,
      ioa: GC::Cities::IOANNINA,
      ira: GC::Cities::IRAKLEIO,
      kar: GC::Cities::KARDITSA,
      kas: GC::Cities::KASTORIA,
      kav: GC::Cities::KAVALA,
      kef: GC::Cities::KEFALLONIA,
      ker: GC::Cities::KERKIRA,
      kik: GC::Cities::KIKLADES,
      kil: GC::Cities::KILKIS,
      kor: GC::Cities::KORINTHOS,
      koz: GC::Cities::KOZANI,
      lak: GC::Cities::LAKONIA,
      lar: GC::Cities::LARISA,
      las: GC::Cities::LASITHI,
      lef: GC::Cities::LEFKADA,
      les: GC::Cities::LESVOS,
      mag: GC::Cities::MAGNISIA,
      mes: GC::Cities::MESSINIA,
      pel: GC::Cities::PELLA,
      pie: GC::Cities::PIERIA,
      pre: GC::Cities::PREVEZA,
      ret: GC::Cities::RETHYMNO,
      rod: GC::Cities::RODOPI,
      sam: GC::Cities::SAMOS,
      ser: GC::Cities::SERRES,
      thesp: GC::Cities::THESPROTIA,
      thess: GC::Cities::THESSALONIKI,
      tri: GC::Cities::TRIKALA,
      xan: GC::Cities::XANTHI,
      zak: GC::Cities::ZAKINTHOS
    }.freeze

    def get_city_name(state_code, city)
      cities_by_code = cities(state_code)
      cities_hash = cities_by_code.map(&:reverse).to_h
      cities_hash[city]
    end

    def cities(code)
      CITY_HASH[code.downcase.to_sym] || raise('city not found')
    end
  end
end
