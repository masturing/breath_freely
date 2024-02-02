// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'health_record_model.g.dart';

@JsonSerializable()
class HealthRecordModel {
  final int? id;
  final String? userId;
  final String? createdAt;
  final String? healthStatus;
  final bool? smoking;
  final bool? yellowFinger;
  final bool? anxiety;
  final bool? peerPressure;
  final bool? chronicDisease;
  final bool? fatigue;
  final bool? allergy;
  final bool? wheezing;
  final bool? coughing;
  final bool? shortBreath;
  final bool? difficultSwallow;
  final bool? chestPain;

  HealthRecordModel({
    this.id,
    this.userId,
    this.createdAt,
    this.healthStatus,
    this.smoking,
    this.yellowFinger,
    this.anxiety,
    this.peerPressure,
    this.chronicDisease,
    this.fatigue,
    this.allergy,
    this.wheezing,
    this.coughing,
    this.shortBreath,
    this.difficultSwallow,
    this.chestPain,
  });

  factory HealthRecordModel.fromJson(Map<String, dynamic> json) =>
      _$HealthRecordModelFromJson(json);

  Map<String, dynamic> toJson() => _$HealthRecordModelToJson(this);
}
