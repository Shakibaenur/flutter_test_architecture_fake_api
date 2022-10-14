
import 'package:get/get.dart';
import 'package:test_flutter_architecture/src/feature/product/controller/product_controller.dart';

class ProductBinding implements Bindings{
  @override
  void dependencies() {
  Get.lazyPut(() => ProductController());
  }
}