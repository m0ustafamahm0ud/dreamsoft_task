import 'package:get/get.dart';
import 'package:task_dreamsoft/controllers/screen1/screen1_ctrl.dart';

class Screen1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Screen1Ctrl());
  }
}
