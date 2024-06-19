import 'package:get/get.dart';

class AuthController extends GetxController {
  var userName = RxString('');

  void setUserName(String name) {
    userName.value = name;
  }
}
