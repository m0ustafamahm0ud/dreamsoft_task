import 'package:get/get.dart';

import '../../controllers/screen2/screen2_ctrl.dart';

class Screen2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Screen2Ctrl());
  }
}
