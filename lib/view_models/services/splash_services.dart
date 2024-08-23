import '../../utils/imports/all_imports.dart';

class SplashService {
  void isLogin() async {
    //logic
    Timer(const Duration(seconds: 3), () {
      Get.toNamed(RouteName.firstView);
    });
  }
}
