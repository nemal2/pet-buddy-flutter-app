import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

//update current index when page scroll
  void updatePageIndicator(index) {}

//jump to selected page
  void dotNavigationClick(index) {}

//update current index and jump next page
  void nextPage() {}

//update current index and jump last page
  void skipPage() {}
}
