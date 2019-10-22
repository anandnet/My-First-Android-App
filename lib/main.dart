import 'package:app/buttonsection.dart';
import 'package:app/textsection.dart';
import 'package:app/titlesection.dart';
import 'package:flutter/material.dart';

void main() => runApp(Whatsapp()) ;

class Whatsapp extends StatefulWidget {
  @override
  _WhatsappState createState(){
    return _WhatsappState();
  }
}

class _WhatsappState extends State<Whatsapp> {
  List <String> textHindi= const["ताजमहल",
                          "आगरा, भारत",
                          "ताजमहल को 1643 में मुगल बादशाह शाहजहाँ (1628 से 1658 तक) ने अपनी पत्नी,"
                          " मुमताज महल की कब्र के लिए बनवाया था; इसमें स्वयं शाहजहाँ का मकबरा भी है।"
                          " मकबरा 17-हेक्टेयर (42-एकड़) परिसर का केंद्रबिंदु है, जिसमें एक मस्जिद और एक गेस्ट हाउस शामिल है,"
                          " और एक औपचारिक दीवार में तीन तरफ से बंधे औपचारिक उद्यानों में स्थापित है।"
                          ];
  static List <String> textEnglish=const ["TajMahal",
                            "Agra,India",
                            "TajMahal was built in 1643 by the Mughal emperor Shah Jahan" 
                            "(reigned from 1628 to 1658) to house the tomb of his favourite wife,"
                            " Mumtaz Mahal; it also houses the tomb of Shah Jahan himself."
                            " The tomb is the centrepiece of a 17-hectare (42-acre) complex,"
                            " which includes a mosque and a guest house, and is set in formal"
                            " gardens bounded on three sides by a crenellated wall."
                            ];

  String _name=textEnglish[0];
  String _place=textEnglish[1];
  String _text=textEnglish[2];
  String _buttonText="हिंदी";
  String _news="TajMahal";
  int count=2;
  int _like=10;
  void _changeLanguage(){
    setState(() {
      if(count%2==1){
        _buttonText="हिंदी";
        _news="TajMahal";
        _name=textEnglish[0];
        _place=textEnglish[1];
        _text=textEnglish[2];
      }
      else{
        _buttonText="English";
        _news="ताजमहल";
        _name=textHindi[0];
        _place=textHindi[1];
        _text=textHindi[2];
      }
    });
    count++;
  }
  void likeCounter(){
    setState(() {
     _like+=1; 
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TajMahal",
      home: Scaffold(
        appBar: AppBar(
          title:Text(_news),
          backgroundColor: Colors.red,
          actions:[
             RaisedButton(
               child:Text(_buttonText),
               color: Colors.red,
               onPressed:(){
                 _changeLanguage();
               } ,
               ) ,
          ], 
          ),
        body:
        ListView(
          children: [
            Image.asset('images/1.jpg',
            height: 200,
            width: 150,
            fit: BoxFit.cover,),
            TitleSection(_name,_place,_like),
            ButtonSection(likeCounter),
            TextSection(_text),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}