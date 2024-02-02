import 'package:breath_freely/app/data/models/health_record_model.dart';
import 'package:breath_freely/app/data/supabase/client.dart';
import 'package:breath_freely/app/domain/repositories/abstract/health_record.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class HealthRecordRepository implements HealthRecordAbstractRepository {
  @override
  Future<HealthRecordModel> createHealthRecord(
      {required HealthRecordModel healthRecord}) {
    // TODO: implement createHealthRecord
    throw UnimplementedError();
  }

  @override
  Future<HealthRecordModel> getHealthRecordByDate({required String date}) {
    // TODO: implement getHealthRecordByDate
    throw UnimplementedError();
  }

  @override
  Future<HealthRecordModel> getHealthRecordById({required int id}) {
    // TODO: implement getHealthRecordById
    throw UnimplementedError();
  }

  @override
  Future<Map> getHealthRecordDashboard({required int id}) async {
    try {
      final res = await SClient.supabase
          .from('health_record')
          .select()
          .eq('user_id', id)
          .single();
      return res;
    } on PostgrestException catch (e) {
      Get.snackbar("Error", e.message);
      return {};
    }
  }

  @override
  Future<List<HealthRecordModel>> getHealthRecordsList() {
    // TODO: implement getHealthRecordsList
    throw UnimplementedError();
  }
}
