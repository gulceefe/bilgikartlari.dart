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

  List <Widget> secimler =
  [];


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
            'Bilgi Testi Soruları',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
    Row(
    children: secimler,
    ),
        Expanded(
          flex:1,
            child: Padding(
            padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    secimler.add(kYanlisIconu);
                  }); //setstate
                  }, //onpressed
                child: Icon(
                  Icons.thumb_down,
                  size: 30.0,
                  color: Colors.white,

              ),)
            ),
        ),
    Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ElevatedButton(
        onPressed: (){
          setState(() {
            secimler.add(kDogruIconu);
          });
        },
        child: Icon(
        Icons.thumb_up,
        size: 30.0,
        color: Colors.white,
        ),
        ),
      ),
    ),
        ],
    );
  }
}

