import 'package:breath_freely/app/data/models/health_record_model.dart';

abstract class HealthRecordAbstractRepository {
  Future<HealthRecordModel> getHealthRecordById({required int id});
  Future<HealthRecordModel> getHealthRecordByDate({required String date});
  Future<List<HealthRecordModel>> getHealthRecordsList();
  Future<HealthRecordModel> createHealthRecord(
      {required HealthRecordModel healthRecord});
  Future<Map> getHealthRecordDashboard({required int id});
}
