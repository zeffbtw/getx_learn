import 'package:get/get.dart';
import 'package:getx_learn/themes.dart';

class ThemeService {
  void toBlueTheme() {
    Get.changeTheme(Themes().blueTheme);
  }

  void toRedTheme() {
    Get.changeTheme(Themes().redTheme);
  }

  void swithDarkTheme() {
    Get.changeTheme(Themes().darkTheme);
  }
}
