import 'package:breath_freely/app/data/models/aqi_model.dart';

abstract class AQIAbstractRepository {
  Future<AqiModel> getDetailAQI({required String city});
  Future<int> getAQI({required String city});
}
