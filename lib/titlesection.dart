import 'package:flutter/material.dart';
class TitleSection extends StatelessWidget {
  final String name;
  final String place;
  final int like;
  TitleSection(this.name,this.place,this.like);
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.green[100],
      padding: const EdgeInsets.all(25),
      child:
      Row(
        children: [
          Expanded(
            child:
            Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Container(
                  padding: const EdgeInsets.only(bottom:8),
                  child:Text(name,
                  style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  ),), 
                ),
                Text(place,style:TextStyle(color: Colors.grey[500])),
              ],
            ),
          ),
         
          Icon(
            Icons.thumb_up,
            color: Colors.green,
            ),
            SizedBox(width: 8,),
          Text(like.toString()),
        ],
      ),
    );
  }
}