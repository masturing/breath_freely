// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: json['id'] as String,
      fullname: json['fullname'] as String,
      email: json['email'] as String,
      gender: json['gender'] as String,
      yearBirth: json['yearBirth'] as int,
      telephone: json['telephone'] as String,
      hobby: json['hobby'] as String,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'fullname': instance.fullname,
      'email': instance.email,
      'gender': instance.gender,
      'yearBirth': instance.yearBirth,
      'telephone': instance.telephone,
      'hobby': instance.hobby,
    };
