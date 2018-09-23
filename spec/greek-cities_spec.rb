require 'spec_helper'

describe 'GC' do
  describe 'self.states' do
    it 'returns all states' do
      expect(GC.states.count).to eq 51
    end

    %w[
      ait arg ark art att aha boi gre dra dod evr eyv eyr zak
      ili ima ira thesp thess ioa kav kar kas ker kef kil koz
      kor kik lak lar las les lef mag mes xan pel pie pre ret
      rod sam ser tri fth flo fok hal han hio
    ].each.with_index do |state, index|
      it "has the state:(#{state}) in the state list" do
        expect(GC.states[index][1]).to eq state
      end
    end
  end

  describe 'self.cities' do
    shared_examples 'correct cities' do |cities, state|
      cities.each.with_index do |city, index|
        it "has the city:(#{city}) in the #{state} state" do
          expect(GC.cities(state)[index][1]).to include city
        end
      end
    end

    context 'When the state is ait' do
      ait_cities =
        %w[agrinio aktio amfilohia thermo mesologgi naupaktos astakos]

      include_examples 'correct cities', ait_cities, 'ait'
    end

    context 'When the state is arg' do
      arg_cities = %w[argos epidavros kranidi nafplio]

      include_examples 'correct cities', arg_cities, 'arg'
    end

    context 'When the state is ark' do
      ark_cities = %w[tripoli leonidio dimitsana megalopoli kinouria]

      include_examples 'correct cities', ark_cities, 'ark'
    end

    context 'When the state is art' do
      art_cities = %w[arta peta kalentini voulgareli]

      include_examples 'correct cities', art_cities, 'art'
    end

    context 'When the state is att' do
      att_cities =
        %w[fila hola dafni kifi meli mosh psih peuk argi anar athi viro kalit
           kaisa irakl iliou zogr gala vril maro ali aiga ilio dimi para varv
           glif petro hala haid peri fali ionia metam smir kera nika gala kith
           sala agkis peir pera kori aigi spet poros udra orop marat
           rafi stef ahar gera paia spat lavr kali voul marko koro kera eleu
           mand mega aspro]

      include_examples 'correct cities', att_cities, 'att'
    end

    context 'When the state is aha' do
      aha_cities = %w[patra halan kato kalavri aigio]

      include_examples 'correct cities', aha_cities, 'aha'
    end

    context 'When the state is boi' do
      boi_cities = %w[shim thiv alia orho liva araho]

      include_examples 'correct cities', boi_cities, 'boi'
    end

    context 'When the state is gre' do
      gre_cities = %w[deskati grevena]

      include_examples 'correct cities', gre_cities, 'gre'
    end

    context 'When the state is dra' do
      dra_cities = %w[drama poro para kala nevro]

      include_examples 'correct cities', dra_cities, 'dra'
    end

    context 'When the state is dod' do
      dod_cities =
        %w[rodos kos karp agat nisi patm kali leip lero kasos tilos simi
           kaste halki asti]

      include_examples 'correct cities', dod_cities, 'dod'
    end

    context 'When the state is evr' do
      evr_cities = %w[alex souf didi ores samo]

      include_examples 'correct cities', evr_cities, 'evr'
    end

    context 'When the state is eyv' do
      eyv_cities = %w[halk psah eret kari isti limn aliv skir]

      include_examples 'correct cities', eyv_cities, 'eyv'
    end

    context 'When the state is eyr' do
      eyr_cities = %w[karpenisi kerasohori agrafa]

      include_examples 'correct cities', eyr_cities, 'eyr'
    end

    context 'When the state is zak' do
      zak_cities = %w[zakinthos]

      include_examples 'correct cities', zak_cities, 'zak'
    end

    context 'When the state is ili' do
      ili_cities = %w[zaha krest pirg amal olim lehai gastou]

      include_examples 'correct cities', ili_cities, 'ili'
    end

    context 'When the state is ima' do
      ima_cities = %w[veroia alexand naousa]

      include_examples 'correct cities', ima_cities, 'ima'
    end

    context 'When the state is ira' do
      ira_cities = %w[irak gazi peza deka gour kast]

      include_examples 'correct cities', ira_cities, 'ira'
    end

    context 'When the state is thesp' do
      thesp_cities = %w[igoum filiat paramit]

      include_examples 'correct cities', thesp_cities, 'thesp'
    end

    context 'When the state is thess' do
      thess_cities =
        %w[thess kord neap stavr ampelo panor kouf sind oraio lagk perai therm
           stavr kalam]

      include_examples 'correct cities', thess_cities, 'thess'
    end

    context 'When the state is ioa' do
      ioa_cities = %w[ioan aspra koni kalp prama metso kiria eleou]

      include_examples 'correct cities', ioa_cities, 'ioa'
    end

    context 'When the state is kav' do
      kav_cities = %w[kava hriso eleut thasos]

      include_examples 'correct cities', kav_cities, 'kav'
    end

    context 'When the state is kar' do
      kar_cities = %w[anth morfo pala sofa kard mouza]

      include_examples 'correct cities', kar_cities, 'kar'
    end

    context 'When the state is kas' do
      kas_cities = %w[kas argo nesto]

      include_examples 'correct cities', kas_cities, 'kas'
    end

    context 'When the state is ker' do
      ker_cities = %w[kerkira paxoi]

      include_examples 'correct cities', ker_cities, 'ker'
    end

    context 'When the state is kef' do
      kef_cities = %w[argosto ithak]

      include_examples 'correct cities', kef_cities, 'kef'
    end

    context 'When the state is kil' do
      kil_cities = %w[kilkis polikastro]

      include_examples 'correct cities', kil_cities, 'kil'
    end

    context 'When the state is koz' do
      koz_cities = %w[kozan siati ptolem servi]

      include_examples 'correct cities', koz_cities, 'koz'
    end

    context 'When the state is kor' do
      kor_cities = %w[korin kiat xilok zeugo loutra nemea]

      include_examples 'correct cities', kor_cities, 'kor'
    end

    context 'When the state is kik' do
      kik_cities =
        %w[siro andr naxo sant tino kimo fole anaf siki anti miko
           amor kea seri sifn kith ios milo paros]

      include_examples 'correct cities', kik_cities, 'kik'
    end

    context 'When the state is lak' do
      lak_cities = %w[spar gith skal mola elaf]

      include_examples 'correct cities', lak_cities, 'lak'
    end

    context 'When the state is lar' do
      lar_cities = %w[elas fars agia makri tirn lari nikaia]

      include_examples 'correct cities', lar_cities, 'lar'
    end

    context 'When the state is las' do
      las_cities = %w[nikolao siteia ierapetra]

      include_examples 'correct cities', las_cities, 'las'
    end

    context 'When the state is les' do
      les_cities = %w[mitili mirina efstratios]

      include_examples 'correct cities', les_cities, 'les'
    end

    context 'When the state is lef' do
      lef_cities = %w[lefkada meganisi]

      include_examples 'correct cities', lef_cities, 'lef'
    end

    context 'When the state is mag' do
      mag_cities = %w[volo veles zago almir arga alon skiat skope]

      include_examples 'correct cities', mag_cities, 'mag'
    end

    context 'When the state is mes' do
      mes_cities = %w[kala mess pilo kipa meli karda]

      include_examples 'correct cities', mes_cities, 'mes'
    end

    context 'When the state is xan' do
      xan_cities = %w[xanthi sminth geniss topeiros]

      include_examples 'correct cities', xan_cities, 'xan'
    end

    context 'When the state is pel' do
      pel_cities = %w[edes arid skid gian]

      include_examples 'correct cities', pel_cities, 'pel'
    end

    context 'When the state is pie' do
      pie_cities = %w[lito aigi kater]

      include_examples 'correct cities', pie_cities, 'pie'
    end

    context 'When the state is pre' do
      pre_cities = %w[preveza kanalaki filippiada]

      include_examples 'correct cities', pre_cities, 'pre'
    end

    context 'When the state is ret' do
      ret_cities = %w[rethim peram foteini spili anogeia]

      include_examples 'correct cities', ret_cities, 'ret'
    end

    context 'When the state is rod' do
      rod_cities = %w[komoti iasmos sapes fillyra]

      include_examples 'correct cities', rod_cities, 'rod'
    end

    context 'When the state is sam' do
      sam_cities = %w[samos kirikos korseon]

      include_examples 'correct cities', sam_cities, 'sam'
    end

    context 'When the state is ser' do
      ser_cities = %w[serr sidiro nigri hriso rodo zihni irakl]

      include_examples 'correct cities', ser_cities, 'ser'
    end

    context 'When the state is tri' do
      tri_cities = %w[pili farka trika kalamp]

      include_examples 'correct cities', tri_cities, 'tri'
    end

    context 'When the state is fth' do
      fth_cities = %w[titho atal domo kamena stili lamia sperh]

      include_examples 'correct cities', fth_cities, 'fth'
    end

    context 'When the state is flo' do
      flo_cities = %w[florina amintaio laimos]

      include_examples 'correct cities', flo_cities, 'flo'
    end

    context 'When the state is fok' do
      fok_cities = %w[amfissa lidoriki]

      include_examples 'correct cities', fok_cities, 'fok'
    end

    context 'When the state is hal' do
      hal_cities = %w[polig nikit kassa moudan ieri]

      include_examples 'correct cities', hal_cities, 'hal'
    end

    context 'When the state is han' do
      han_cities = %w[hani vrises gera kiss palaio gaudo sfakia]

      include_examples 'correct cities', han_cities, 'han'
    end

    context 'When the state is hio' do
      hio_cities = %w[hios oinousses]

      include_examples 'correct cities', hio_cities, 'hio'
    end
  end

  describe 'self.get_state_name' do
    context 'when you supply a state code' do
      it 'returns the state name in greek' do
        expect(GC.get_state_name('art')).to eq 'Άρτας'
      end
    end
  end

  describe 'self.get_city_name' do
    context 'when you supply a state and a city code' do
      it 'returns the city name in greek' do
        expect(GC.get_city_name('att', 'athina-ATT')).to eq 'Αθήνα'
      end
    end
  end
end
