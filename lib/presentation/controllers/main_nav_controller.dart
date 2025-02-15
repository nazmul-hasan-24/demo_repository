import 'package:get/get.dart';

class MainBottomNavController extends GetxController {
  int _selectedIndex = 0;

  int get currentIndex => _selectedIndex;

  // get selectedIndex => null;

  void changeIndex(int index) {
    if (_selectedIndex == index) {
      return;
    }

    // if (index == 2 || index == 3) {
    //   if (Get.find<AuthController>().isTokenNotNull == false) {
    //     AuthController.goToLogin();
    //     return;
    //   }
    // }

    _selectedIndex = index;
    update();
  }

  void backToHome() {
    changeIndex(0);
  }
}
