import 'package:json_annotation/json_annotation.dart';

part 'aqi_model.g.dart';

@JsonSerializable()
class AqiModel {
  final String? status;
  final Data? data;

  AqiModel({
    this.status,
    this.data,
  });

  factory AqiModel.fromJson(Map<String, dynamic> json) =>
      _$AqiModelFromJson(json);

  Map<String, dynamic> toJson() => _$AqiModelToJson(this);
}

@JsonSerializable()
class Data {
  final int? aqi;
  final int? idx;
  final List<Attribution>? attributions;
  final City? city;
  final String? dominentpol;
  final Iaqi? iaqi;
  final Time time;

  Data({
    required this.aqi,
    required this.idx,
    required this.attributions,
    required this.city,
    required this.dominentpol,
    required this.iaqi,
    required this.time,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Attribution {
  String? url;
  String? name;

  Attribution({this.url, this.name});

  factory Attribution.fromJson(Map<String, dynamic> json) =>
      _$AttributionFromJson(json);

  Map<String, dynamic> toJson() => _$AttributionToJson(this);
}

@JsonSerializable()
class City {
  final List<double>? geo;
  final String? name;
  final String? url;
  final String? location;

  City({
    required this.geo,
    required this.name,
    required this.url,
    required this.location,
  });

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

  Map<String, dynamic> toJson() => _$CityToJson(this);
}

@JsonSerializable()
class Iaqi {
  final double? co;
  final double? h;
  final double? no2;
  final double? o3;
  final double? p;
  final double? pm10;
  final double? pm25;
  final double? so2;
  final double? t;
  final double? w;

  Iaqi({
    required this.co,
    required this.h,
    required this.no2,
    required this.o3,
    required this.p,
    required this.pm10,
    required this.pm25,
    required this.so2,
    required this.t,
    required this.w,
  });

  factory Iaqi.fromJson(Map<String, dynamic> json) => _$IaqiFromJson(json);

  Map<String, dynamic> toJson() => _$IaqiToJson(this);
}

@JsonSerializable()
class Time {
  String? s;
  String? tz;
  int? v;
  String? iso;

  Time({this.s, this.tz, this.v, this.iso});

  factory Time.fromJson(Map<String, dynamic> json) => _$TimeFromJson(json);
  Map<String, dynamic> toJson() => _$TimeToJson(this);
}
