import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CounterControler extends GetxController {
  RxInt counter = 1.obs;

  incrementCounter() {
    counter.value++;
    print(counter.value);
  }
}

class ExampleTwoControler extends GetxController {
  RxDouble opacity = .4.obs;

  Slidercontroler(double value) {
    opacity.value = value;
  }
}

class ThirdExampleSwithButton extends GetxController {
  RxBool notification = false.obs;

  ButtonController(bool val) {
    notification.value = val;
    print(notification.value);
  }
}
