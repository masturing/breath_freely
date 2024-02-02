import 'package:breath_freely/app/data/models/user_model.dart';
import 'package:breath_freely/app/data/supabase/client.dart';
import 'package:breath_freely/app/domain/repositories/abstract/user_abstract.dart';
import 'package:breath_freely/app/routes/app_pages.dart';
import 'package:breath_freely/config.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class UserRepository implements UserAbstractRepository {
  @override
  Future<bool> forgotPassword({required String email}) {
    // TODO: implement forgotPassword
    throw UnimplementedError();
  }

  @override
  Future<UserModel> getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future<void> login({required String email, required String password}) async {
    try {
      AuthResponse res = await SClient.supabase.auth
          .signInWithPassword(email: email, password: password);
      if (res.user != null) {
        final userMap = res.user!.toJson();
        final query = await SClient.supabase
            .from('users')
            .select()
            .eq('email', res.user!.email!)
            .single();
        MainConfig.storage.write('auth', userMap);
        MainConfig.storage.write('user', query);
        MainConfig.storage.write('id', query['id']);
        Get.offAllNamed(Routes.HOME);
      } else {
        Get.snackbar('Error', 'Login failed');
      }
    } on AuthException catch (e) {
      Get.snackbar('Error', e.message);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  @override
  Future<void> logout() async {
    try {
      await SClient.supabase.auth.signOut();
      MainConfig.storage.remove('user');
      Get.offAllNamed(Routes.AUTH_SCREEN);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  @override
  Future<void> register(
      {required String fullname,
      required String email,
      required String password,
      required String confirmPassword,
      required String gender,
      required int yearBirth,
      required String telephone,
      required String hobby,
      required Callback onSuccess}) async {
    if (password == confirmPassword) {
      try {
        AuthResponse res = await SClient.supabase.auth
            .signUp(email: email, password: password, phone: telephone);
        if (res.user != null) {
          try {
            await SClient.supabase.from('users').upsert({
              'fullname': fullname,
              'email': email,
              'gender': gender,
              'year_birth': yearBirth,
              'telephone': telephone,
              'hobby': hobby,
            });
            Get.snackbar('Success', 'Register success');
            onSuccess();
          } catch (e) {
            Get.snackbar('Error', "Account already exists");
          }
        } else {
          Get.snackbar('Error', 'Register failed');
        }
      } catch (e) {
        Get.snackbar('Error', e.toString());
      }
    } else {
      Get.snackbar('Error', 'Password not match');
    }
  }

  @override
  Future<bool> updatePassword(
      {required String newPassword, required String confirmPassword}) {
    // TODO: implement updatePassword
    throw UnimplementedError();
  }

  @override
  Future<bool> updateUser(
      {required String fullname,
      required String gender,
      required int yearBirth,
      required String telephone,
      required String hobby}) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }

  @override
  getUserAttr(String attr) {
    return MainConfig.storage.read('user')[attr];
  }
}
