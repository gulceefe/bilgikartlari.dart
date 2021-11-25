import 'package:bilgi_kartlari/soru.dart';

class TestVeri {
  int _soruSirasi = 0;

  List <Soru> _soruBankasi = [
    Soru (soruMetni: 'Titanic gelmiş geçmiş en büyük gemidir.' , soruYaniti: false),
    Soru (soruMetni:'Dünyadaki tavuk sayısı insan sayısından fazladır.' , soruYaniti: true ),
    Soru (soruMetni:'Kelebeklerin ömrü bir gündür.' , soruYaniti: false),
    Soru (soruMetni:'Dünya düzdür.' , soruYaniti: false ),
    Soru (soruMetni: 'Kaju fıstığı aslında bir meyvenin sapıdır.', soruYaniti: true ),
    Soru (soruMetni:'Fatih Sultan Mehmet hiç patates yememiştir.' , soruYaniti:true ),
    Soru (soruMetni:'Fransızlar 80 demek için, 4 - 20 der.' , soruYaniti: true )
  ];

    String getSoruMetni (){ //hangisini çağıracak?Bilmek için parametresini parantez içine verdik. ama sonra soruSirasi değişkenini de bu sayfaya getirdik, üstte var. o nedenle o parametreyi kaldırabiliriz.
      return _soruBankasi[_soruSirasi].soruMetni;
    }
    bool getSoruYaniti (){
      return _soruBankasi[_soruSirasi].soruYaniti;
    }

    void sonrakiSoru(){
      if(_soruSirasi+1<_soruBankasi.length){
        _soruSirasi++;
      }
    }
}