// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  final String id;
  final String fullname;
  final String email;
  final String gender;
  final int yearBirth;
  final String telephone;
  final String hobby;

  UserModel({
    required this.id,
    required this.fullname,
    required this.email,
    required this.gender,
    required this.yearBirth,
    required this.telephone,
    required this.hobby,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
