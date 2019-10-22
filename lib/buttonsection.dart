import 'package:app/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class ButtonSection extends StatelessWidget {
  final Function likeCounter;
  ButtonSection(this.likeCounter);
  void func()
  {}
  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        CustButton(Colors.red, Icons.thumb_up, 'Like',0,likeCounter),
        CustButton(Colors.red, Icons.near_me, 'Location',1,func),
        CustButton(Colors.red, FontAwesomeIcons.wikipediaW, 'Wiki',2,func),
        ],
      ),
    );
  }
}