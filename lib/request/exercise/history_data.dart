// ignore_for_file: non_constant_identifier_names


import 'package:json_annotation/json_annotation.dart';

@JsonSerializable(explicitToJson: true)
class History {
  History(
      {
      required this.name,
      required this.time,
      required this.people,
      required this.remark,
      required this.avgScore,
      required this.isGroup,
      required this.items,
      required this.score,
      required this.peopleCount

      });

  String name;
  DateTime time;
  String people;
  String remark;
  bool isGroup;
  double score;
  double avgScore;
  int peopleCount;
  List<int> items;
 
  // factory Invite.fromJson(Map<String, dynamic> json) =>
  //     _$InviteFromJson(json);
  // Map<String, dynamic> toJson() => _$InviteToJson(this);
}