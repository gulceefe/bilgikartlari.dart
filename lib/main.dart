
import 'package:bilgi_kartlari/test_veri.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'constants.dart';

void main() => runApp(BilgiTesti());

class BilgiTesti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: SoruSayfasi(),

          ),
        ),
      ),
    );
  }
}

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {

  List <Widget> secimler = [];
  List <bool> yanitlar = [false, true, false,false, true, true, true];
  TestVeri test_1 = TestVeri(); // burada sorular yazıyordu. onları test-veri'ye attık. buraya da bu testveri satırını yazdık.
  void butonFonksiyonu (secilenButon){
    if(test_1.testBittiMi()==true){

      //alertdialog göster, aşağıda.
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            title: new Text("Test Bitti!"),
            //content: new Text("Burada sonuç verilecek"),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog
              new TextButton(
                child: new Text("Başa Dön"),
                onPressed: () {
                  Navigator.of(context).pop();
                  setState(() {
                    test_1.testiSifirla(); //indexi sıfırla
                    secimler = []; //secimleri sıfırla
                  });
                },
              ),
            ],
          );
        },
      );


    } else{
      setState(() {
        test_1.getSoruYaniti() ==
                secilenButon //buraya true veya false yerine secilenButon diye parametre verdik, yukarda da void parametresi olarak yazdık.
            ? secimler.add(kDogruIconu)
            : secimler.add(kYanlisIconu);

        test_1.sonrakiSoru();
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(

      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
      Expanded(
      flex: 4,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            test_1.getSoruMetni(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
    Wrap(
      runSpacing: 5,
      spacing: 5,
    children: secimler,
    ),
        Expanded(
          flex:1,
            child: Padding(
            padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                 //onpressed
                child: Icon(
                  Icons.thumb_down,
                  size: 30.0,
                  color: Colors.white,
              ),
                onPressed: (){

                  butonFonksiyonu(false);
                },
              ),
            ),
        ),
    Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ElevatedButton(

        child: Icon(
        Icons.thumb_up,
        size: 30.0,
        color: Colors.white,
        ),
          onPressed: (){
            butonFonksiyonu(true);
          },
        ),
      ),
    ),
        ],
    );
  }
}



