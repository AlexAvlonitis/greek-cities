# frozen_string_literal: true

module GC
  module City
    def get_city_name(state_code, city)
      cities_by_code = cities(state_code)
      cities_hash = cities_by_code.map(&:reverse).to_h
      cities_hash[city]
    end

    def cities(code)
      cities_hash_table[code.downcase.to_sym] || raise('city not found')
    end

    private

    def cities_hash_table
      @cities_hash_table ||= {
        aha: GC::Helpers::LoadFiles.load('/cities/ahaia.yml'),
        ait: GC::Helpers::LoadFiles.load('/cities/aitoloakarnania.yml'),
        arg: GC::Helpers::LoadFiles.load('/cities/argolida.yml'),
        ark: GC::Helpers::LoadFiles.load('/cities/arkadia.yml'),
        art: GC::Helpers::LoadFiles.load('/cities/arta.yml'),
        att: GC::Helpers::LoadFiles.load('/cities/attiki.yml'),
        boi: GC::Helpers::LoadFiles.load('/cities/boiotia.yml'),
        dod: GC::Helpers::LoadFiles.load('/cities/dodekanisa.yml'),
        dra: GC::Helpers::LoadFiles.load('/cities/drama.yml'),
        evr: GC::Helpers::LoadFiles.load('/cities/evros.yml'),
        eyr: GC::Helpers::LoadFiles.load('/cities/eyrytania.yml'),
        eyv: GC::Helpers::LoadFiles.load('/cities/eyvoia.yml'),
        flo: GC::Helpers::LoadFiles.load('/cities/florina.yml'),
        fok: GC::Helpers::LoadFiles.load('/cities/fokida.yml'),
        fth: GC::Helpers::LoadFiles.load('/cities/fthiotida.yml'),
        gre: GC::Helpers::LoadFiles.load('/cities/grevena.yml'),
        hal: GC::Helpers::LoadFiles.load('/cities/halkidiki.yml'),
        han: GC::Helpers::LoadFiles.load('/cities/hania.yml'),
        hio: GC::Helpers::LoadFiles.load('/cities/hios.yml'),
        ili: GC::Helpers::LoadFiles.load('/cities/ilia.yml'),
        ima: GC::Helpers::LoadFiles.load('/cities/imathia.yml'),
        ioa: GC::Helpers::LoadFiles.load('/cities/ioannina.yml'),
        ira: GC::Helpers::LoadFiles.load('/cities/irakleio.yml'),
        kar: GC::Helpers::LoadFiles.load('/cities/karditsa.yml'),
        kas: GC::Helpers::LoadFiles.load('/cities/kastoria.yml'),
        kav: GC::Helpers::LoadFiles.load('/cities/kavala.yml'),
        kef: GC::Helpers::LoadFiles.load('/cities/kefallonia.yml'),
        ker: GC::Helpers::LoadFiles.load('/cities/kerkira.yml'),
        kik: GC::Helpers::LoadFiles.load('/cities/kiklades.yml'),
        kil: GC::Helpers::LoadFiles.load('/cities/kilkis.yml'),
        kor: GC::Helpers::LoadFiles.load('/cities/korinthos.yml'),
        koz: GC::Helpers::LoadFiles.load('/cities/kozani.yml'),
        lak: GC::Helpers::LoadFiles.load('/cities/lakonia.yml'),
        lar: GC::Helpers::LoadFiles.load('/cities/larisa.yml'),
        las: GC::Helpers::LoadFiles.load('/cities/lasithi.yml'),
        lef: GC::Helpers::LoadFiles.load('/cities/lefkada.yml'),
        les: GC::Helpers::LoadFiles.load('/cities/lesvos.yml'),
        mag: GC::Helpers::LoadFiles.load('/cities/magnisia.yml'),
        mes: GC::Helpers::LoadFiles.load('/cities/messinia.yml'),
        pel: GC::Helpers::LoadFiles.load('/cities/pella.yml'),
        pie: GC::Helpers::LoadFiles.load('/cities/pieria.yml'),
        pre: GC::Helpers::LoadFiles.load('/cities/preveza.yml'),
        ret: GC::Helpers::LoadFiles.load('/cities/rethymno.yml'),
        rod: GC::Helpers::LoadFiles.load('/cities/rodopi.yml'),
        sam: GC::Helpers::LoadFiles.load('/cities/samos.yml'),
        ser: GC::Helpers::LoadFiles.load('/cities/serres.yml'),
        thesp: GC::Helpers::LoadFiles.load('/cities/thesprotia.yml'),
        thess: GC::Helpers::LoadFiles.load('/cities/thessaloniki.yml'),
        tri: GC::Helpers::LoadFiles.load('/cities/trikala.yml'),
        xan: GC::Helpers::LoadFiles.load('/cities/xanthi.yml'),
        zak: GC::Helpers::LoadFiles.load('/cities/zakinthos.yml')
      }
    end
  end
end
