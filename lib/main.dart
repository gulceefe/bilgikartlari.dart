
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main () => runApp(BilgiTesti());

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
        Padding(padding: EdgeInsets.symmetric(horizontal: 6.0),
        child: Row(
          children: [
          Expanded(
            child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.0),
            child: ElevatedButton(

                onPressed: (){},
                child: Icon(
                  Icons.thumb_down,
                  size: 30.0,
                  color: Colors.white,
                ),
            ),
          ),
          ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.0),
                child: ElevatedButton(
                    onPressed: (){},
                  child: Icon(Icons.thumb_up,
                  size: 30.0,
                    color: Colors.white,
                  ),
                ),
            ),
            ),
        ],),
        ),
      ],
    );
  }
}
