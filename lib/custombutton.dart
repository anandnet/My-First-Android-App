import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class CustButton extends StatelessWidget {
  final Color coLor;
  final IconData icon;
  final String label;
  final int keyM;
  final Function func;
  CustButton(this.coLor,this.icon,this.label,this.keyM,this.func);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        child:
      Column(
        children:[
          Container(
            padding: const EdgeInsets.only(bottom: 5),
            child:
            IconButton(
              icon: Icon(icon),
              color: coLor,
              onPressed: (){
                if(keyM==0)
                  func();
                else if(keyM==1)
                  launch("https://www.google.com/maps/search/?api=1&query=Tajmahal,agra,india");
                else if(keyM==2)
                  launch("https://en.wikipedia.org/wiki/Taj_Mahal");
              },
              ),
          ),
          Text(label,style: TextStyle(color: coLor),),
        ]
      ),
    );
  }
}