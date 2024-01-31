import 'package:breath_freely/app/data/api/dio.dart';
import 'package:breath_freely/app/data/models/aqi_model.dart';
import 'package:breath_freely/app/domain/repositories/abstract/aqi_abstraction.dart';
import 'package:breath_freely/config.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class AQIRepository implements AQIAbstractRepository {
  @override
  Future<int> getAQI({required String city}) async {
    try {
      final res = await dio(MainConfig.apiAqiUrl)
          .get('/feed/$city/?token=${MainConfig.apiAqiKey}');
      AqiModel aqiModel = AqiModel.fromJson(res.data);
      if (aqiModel.status == 'ok') {
        return aqiModel.data!.aqi!;
      } else {
        return 0;
      }
    } on DioException catch (e) {
      Get.snackbar("Error", e.message!);
      return 0;
    }
  }

  @override
  Future<AqiModel> getDetailAQI({required String city}) {
    // TODO: implement getDetailAQI
    throw UnimplementedError();
  }
}
