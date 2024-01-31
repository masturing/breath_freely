import 'package:breath_freely/app/data/models/user_model.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

abstract class UserAbstractRepository {
  Future<void> register({
    required String fullname,
    required String email,
    required String password,
    required String confirmPassword,
    required String gender,
    required int yearBirth,
    required String telephone,
    required String hobby,
    required Callback onSuccess,
  });

  Future<void> login({
    required String email,
    required String password,
  });

  Future<void> logout();

  Future<UserModel> getUser();

  Future<bool> updateUser({
    required String fullname,
    required String gender,
    required int yearBirth,
    required String telephone,
    required String hobby,
  });

  Future<bool> updatePassword({
    required String newPassword,
    required String confirmPassword,
  });

  Future<bool> forgotPassword({
    required String email,
  });

  dynamic getUserAttr(String attr);
}
