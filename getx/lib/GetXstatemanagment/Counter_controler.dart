import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CounterControler extends GetxController {
  RxInt counter = 1.obs;

  incrementCounter() {
    counter.value++;
    print(counter.value);
  }
}
