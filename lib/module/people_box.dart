import 'package:e_fu/my_data.dart';
import 'package:flutter/material.dart';
import 'package:age_calculator/age_calculator.dart';

class PeopleBox {
  String id;
  String name;
  double height;
  String weight;
  String gender;
  DateTime birthday;
  List<String> disease;
  
  PeopleBox({
    required this.id,
    required this.name,
    required this.height,
    required this.weight,
    required this.gender,
    required this.disease,
    required this.birthday
  });

  Widget box() {
    TextStyle wText=whiteText();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(100, 8, 8, 8),
            height: 100,
            width: 600,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text("年齡 : ${AgeCalculator.age(birthday).years}"),
                    Text("身高 : $height"),
                    Text("體重 : $weight"),
                  ],
                ),
                Column(
                  children: const [Text("疾病"), Text("高血糖")],
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
                Text(
                  name,
                  style:wText,
                ),
                Text(
                  gender,
                  style: wText,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
