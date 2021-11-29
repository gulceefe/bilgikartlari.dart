import 'package:bilgi_kartlari/soru.dart';


class TestVeri {
  int _soruSirasi = 0;

  List <Soru> _soruBankasi = [
    Soru(
        soruMetni: "Türkiye'nin Karadeniz Bölgesi, kestane balı üretimi için elverişlidir. ",
        soruYaniti: true),
    Soru(soruMetni: "Yarasalar kördür.", soruYaniti: false),
    Soru(soruMetni: "Türkiyede en çok kullanılan soyisim 'Yılmaz'dır. ",
        soruYaniti: true),
    Soru(
        soruMetni: "Gebze ilinde yer alan Honda fabrikası 2021 yılında kapanmıştır.",
        soruYaniti: true),
    Soru(
        soruMetni: "Süleyman Demirel, 1989-1993 yılları arasında Cumhurbaşkanlığı yapmıştır.",
        soruYaniti: false),
    Soru(soruMetni: "Güneş sarı renktir.", soruYaniti: false),
    Soru(
        soruMetni: "Ünlü sitcom Avrupa Yakası'ndaki Burhan karakteri Nişantaşı'nda doğmuştur.",
        soruYaniti: false),
    Soru(soruMetni: 'Dünya düzdür.', soruYaniti: false),
    Soru(
        soruMetni: "Google'a 'Do a Barrel Roll' yazarsanız sayfa takla atar ve eski haline döner. ",
        soruYaniti: true),
    Soru(soruMetni: 'Fatih Sultan Mehmet hiç patates yememiştir.',
        soruYaniti: true),
    Soru(soruMetni: "Pisa Kulesi kasıtlı olarak yamuk yapılmıştır.",
        soruYaniti: false),
    Soru(soruMetni: "Toros Dağları, Ege Bölgesindedir.", soruYaniti: false),
    Soru(
        soruMetni: "Türkiyede 2017 yılında asgari ücret 1400 TL olarak belirlenmiştir.",
        soruYaniti: false),
    Soru(soruMetni: "Tutankhamun, 9 yaşında Antik Mısır'ın kralı olmuştur.",
        soruYaniti: true),
    Soru(
        soruMetni: "Türkiye'nin Eurovision Yarışmasında birinci olduğu yıl 2003'tür.",
        soruYaniti: true),
    Soru(
        soruMetni: "Barış Manço, 7'den 77'ye isimli programı 1988 yılında yayınlanmaya başlamıştır.",
        soruYaniti: true),
    Soru(
        soruMetni: "Toplam talebin toplam arzdan fazla olması, buna bağlı olarak fiyatların yükselmesine dayanan ekonomik dengesizlik, paranın değerinin düşmesi ve alım gücünün azalması olayına enflasyon denir.",
        soruYaniti: true),
    Soru(soruMetni: "Tutunamayanlar isimli roman, Aziz Nesin'in eseridir.",
        soruYaniti: false),
    Soru(
        soruMetni: "İkinci Abdulhanit'in tahtta olduğu 1881 yılında, dış borçlanma nedeniyle idaresinde İngiltere, Fransa, Almanya, İtalya, Avusturya-Macaristan temsilcileri bulunan Düyun-u Umumiye kurulmuştur.",
        soruYaniti: true),
    Soru(soruMetni: "En az yağış alan bölgemiz İç Anadoludur.",
        soruYaniti: true),
    Soru(soruMetni: "Kana kırmızı rengini veren madde fişne suyudur.",
        soruYaniti: false),
    Soru(soruMetni: "Hababam Sınıfı romanının yazarı, Rıfat Ilgaz'dır.",
        soruYaniti: true),
    Soru(soruMetni: "Dünyanın en çok ticareti yapılan ikinci ürünü çaydır.",
        soruYaniti: false),
    Soru(soruMetni: "Karaciğer, kendini yenileyebilen tek organdır.",
        soruYaniti: true),
    Soru(soruMetni: "İngiltere'deki bütün kuğular kraliçeye aittir.",
        soruYaniti: true),
    Soru(
        soruMetni: "Türkiye, dünyada kişi başına çay tüketiminin en yüksek olduğu ülkedir.",
        soruYaniti: true),
    Soru(soruMetni: "Patatesin %80'i şekerdir.", soruYaniti: false),
    Soru(
        soruMetni: "Fransız pasaportunda boy ve göz rengi belirtilen alanlar vardır.",
        soruYaniti: true),
    Soru(soruMetni: "Zeytin bir sebzedir.", soruYaniti: false),
    Soru(
        soruMetni: "İstanbuldaki Yavuz Sultan Selim Köprüsü'nün yapımı 39,5 ay sürmüştür.",
        soruYaniti: true),
    Soru(soruMetni: "Çin Seddi aydan görünebilir.", soruYaniti: false),
    Soru(
        soruMetni: "Türkiyede 2020 yılında en sık yapılan ikinci arama 'Dolar kaç TL' cümlesidir.",
        soruYaniti: true),
    Soru(soruMetni: "Devekuşları bir şeyden korktuğunda başlarını kuma gömer.",
        soruYaniti: false)
  ];

  String getSoruMetni() {
    //hangisini çağıracak?Bilmek için parametresini parantez içine verdik. ama sonra soruSirasi değişkenini de bu sayfaya getirdik, üstte var. o nedenle o parametreyi kaldırabiliriz.
    return _soruBankasi[_soruSirasi].soruMetni;
  }

  bool getSoruYaniti() {
    return _soruBankasi[_soruSirasi].soruYaniti;
  }

  void sonrakiSoru() {
    if (_soruSirasi + 1 < _soruBankasi.length) {
      _soruSirasi++;
    }
  }

  bool testBittiMi() {
    if (_soruSirasi + 1 >= _soruBankasi.length) {
      return true;
    } else {
      return false;
    }
  }

  void testiSifirla() {
    _soruSirasi = 0;
  }


  // class DogruYanlisYanitSayisi {
  // int dogruYanitlar= 0;
  // int yanlisYanitlar=0;
  //List <soruYaniti> dogruYanlisYanitlar = [];

  // void dogruYanitlarOperasyonu () {
  // for (var items in soruYaniti) {
  // if (soruYaniti == true) {
  // dogruYanitlar++;
  // }
  // }
  // }

  }
