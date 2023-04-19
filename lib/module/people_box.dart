import 'package:e_fu/myData.dart';
import 'package:flutter/material.dart';

class PeopleBox {
  String id;
  String name;
  String height;
  String weight;
  String gender;
  List<int> disease;
  PeopleBox({
    required this.id,
    required this.name,
    required this.height,
    required this.weight,
    required this.gender,
    required this.disease,
  });

  Widget box() {
    return 
    
    
    
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(children: [
        Container(
        padding: EdgeInsets.fromLTRB(100,8, 8, 8),
        height: 100,
        width: 600,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text("年齡"),
                Text("身高"),
                Text("體重"),
              ],
            ),
            Column(
              children: [Text("疾病"), Text("高血糖")],
            ),
          ],
        ),
      ),
        Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: MyTheme.lightColor),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(name,style: TextStyle(color:Colors.white),),
                  Text(gender,style: TextStyle(color:Colors.white),),
                ],
              ),
            ),
      ],),
    );
    
  
  }
}
