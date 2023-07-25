import 'package:get/get.dart';

class BaseController extends GetxController {
  RxBool isLoading = true.obs;
  RxBool hasError = false.obs;

  void startLoading() {
    isLoading.value = true;
    hasError.value = false;
  }

  void stopLoading() {
    isLoading.value = false;
  }

  void setError() {
    hasError.value = true;
  }

  void showSnackbar(String message) {
    Get.snackbar('Error', message, duration: Duration(seconds: 3));
  }
}
