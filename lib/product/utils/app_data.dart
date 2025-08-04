import 'package:educhamp/API/api_base.dart' show ApiBase;
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart' show GetStorage;

class AppData {
  static late final GetStorage box;
  // static var userDetail = UserModel().obs;
  static final isLoaded = false.obs;
  static var loginAccept = false.obs;

  static void setValueToToken(String value) {
    _userToken.value = value;
    box.write('token', value);
  }

  // static void setUserDetailValue(UserModel? value) {
  //   userDetail.value = value ?? UserModel();
  //   box.write("user", value);
  // }

  static void setLoginAccept(bool value) {
    loginAccept.value = value;
    box.write('loginAccept', value);
  }

  static bool get getLoginAccept => box.read('loginAccept') ?? false;

  static final _userToken = "".obs;
  static String get getTokenValue => box.read('token') ?? '';

  static Future setup() async {
    if (isLoaded.value) return;
    isLoaded.value = true;
    await ApiBase.instance.localDataBaseInit();
    ApiBase.instance.dioSetUp();
    var userData = box.read('user');
    if (userData != null) {
      // userDetail.value = UserModel.fromJson(userData);
    } else {
      // userDetail.value = UserModel();
    }
    isLoaded.value = false;
  }

  static Future clearUserDetail() async {
    // userDetail.value = UserModel();
    await box.remove('user');
  }
}