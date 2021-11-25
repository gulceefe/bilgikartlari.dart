import 'package:bilgi_kartlari/soru.dart';

class TestVeri {
  List <Soru> _soruBankasi = [
    Soru (soruMetni: 'Titanic gelmiş geçmiş en büyük gemidir.' , soruYaniti: false),
    Soru (soruMetni:'Dünyadaki tavuk sayısı insan sayısından fazladır.' , soruYaniti: true ),
    Soru (soruMetni:'Kelebeklerin ömrü bir gündür.' , soruYaniti: false),
    Soru (soruMetni:'Dünya düzdür.' , soruYaniti: false ),
    Soru (soruMetni: 'Kaju fıstığı aslında bir meyvenin sapıdır.', soruYaniti: true ),
    Soru (soruMetni:'Fatih Sultan Mehmet hiç patates yememiştir.' , soruYaniti:true ),
    Soru (soruMetni:'Fransızlar 80 demek için, 4 - 20 der.' , soruYaniti: true )
  ];

    String getSoruMetni (int soruSirasi){ //hangisini çağıracak?Bilmek için parametresini parantez içine verdik.
      return _soruBankasi[soruSirasi].soruMetni;
    }
    bool getSoruYaniti (int soruSirasi){
      return _soruBankasi[soruSirasi].soruYaniti;
    }
}