// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aqi_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AqiModel _$AqiModelFromJson(Map<String, dynamic> json) => AqiModel(
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AqiModelToJson(AqiModel instance) => <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      aqi: json['aqi'] as int?,
      idx: json['idx'] as int?,
      attributions: (json['attributions'] as List<dynamic>?)
          ?.map((e) => Attribution.fromJson(e as Map<String, dynamic>))
          .toList(),
      city: json['city'] == null
          ? null
          : City.fromJson(json['city'] as Map<String, dynamic>),
      dominentpol: json['dominentpol'] as String?,
      iaqi: json['iaqi'] == null
          ? null
          : Iaqi.fromJson(json['iaqi'] as Map<String, dynamic>),
      time: Time.fromJson(json['time'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'aqi': instance.aqi,
      'idx': instance.idx,
      'attributions': instance.attributions,
      'city': instance.city,
      'dominentpol': instance.dominentpol,
      'iaqi': instance.iaqi,
      'time': instance.time,
    };

Attribution _$AttributionFromJson(Map<String, dynamic> json) => Attribution(
      url: json['url'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$AttributionToJson(Attribution instance) =>
    <String, dynamic>{
      'url': instance.url,
      'name': instance.name,
    };

City _$CityFromJson(Map<String, dynamic> json) => City(
      geo: (json['geo'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      name: json['name'] as String?,
      url: json['url'] as String?,
      location: json['location'] as String?,
    );

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
      'geo': instance.geo,
      'name': instance.name,
      'url': instance.url,
      'location': instance.location,
    };

Iaqi _$IaqiFromJson(Map<String, dynamic> json) => Iaqi(
      co: (json['co'] as num?)?.toDouble(),
      h: (json['h'] as num?)?.toDouble(),
      no2: (json['no2'] as num?)?.toDouble(),
      o3: (json['o3'] as num?)?.toDouble(),
      p: (json['p'] as num?)?.toDouble(),
      pm10: (json['pm10'] as num?)?.toDouble(),
      pm25: (json['pm25'] as num?)?.toDouble(),
      so2: (json['so2'] as num?)?.toDouble(),
      t: (json['t'] as num?)?.toDouble(),
      w: (json['w'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$IaqiToJson(Iaqi instance) => <String, dynamic>{
      'co': instance.co,
      'h': instance.h,
      'no2': instance.no2,
      'o3': instance.o3,
      'p': instance.p,
      'pm10': instance.pm10,
      'pm25': instance.pm25,
      'so2': instance.so2,
      't': instance.t,
      'w': instance.w,
    };

Time _$TimeFromJson(Map<String, dynamic> json) => Time(
      s: json['s'] as String?,
      tz: json['tz'] as String?,
      v: json['v'] as int?,
      iso: json['iso'] as String?,
    );

Map<String, dynamic> _$TimeToJson(Time instance) => <String, dynamic>{
      's': instance.s,
      'tz': instance.tz,
      'v': instance.v,
      'iso': instance.iso,
    };
