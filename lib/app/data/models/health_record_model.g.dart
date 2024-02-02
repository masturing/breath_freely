// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_record_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HealthRecordModel _$HealthRecordModelFromJson(Map<String, dynamic> json) =>
    HealthRecordModel(
      id: json['id'] as int?,
      userId: json['userId'] as String?,
      createdAt: json['createdAt'] as String?,
      healthStatus: json['healthStatus'] as String?,
      smoking: json['smoking'] as bool?,
      yellowFinger: json['yellowFinger'] as bool?,
      anxiety: json['anxiety'] as bool?,
      peerPressure: json['peerPressure'] as bool?,
      chronicDisease: json['chronicDisease'] as bool?,
      fatigue: json['fatigue'] as bool?,
      allergy: json['allergy'] as bool?,
      wheezing: json['wheezing'] as bool?,
      coughing: json['coughing'] as bool?,
      shortBreath: json['shortBreath'] as bool?,
      difficultSwallow: json['difficultSwallow'] as bool?,
      chestPain: json['chestPain'] as bool?,
    );

Map<String, dynamic> _$HealthRecordModelToJson(HealthRecordModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'createdAt': instance.createdAt,
      'healthStatus': instance.healthStatus,
      'smoking': instance.smoking,
      'yellowFinger': instance.yellowFinger,
      'anxiety': instance.anxiety,
      'peerPressure': instance.peerPressure,
      'chronicDisease': instance.chronicDisease,
      'fatigue': instance.fatigue,
      'allergy': instance.allergy,
      'wheezing': instance.wheezing,
      'coughing': instance.coughing,
      'shortBreath': instance.shortBreath,
      'difficultSwallow': instance.difficultSwallow,
      'chestPain': instance.chestPain,
    };
