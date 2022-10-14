
import 'package:get/get.dart';
import 'package:test_flutter_architecture/src/feature/product/binding/product_binding.dart';

class InitialBinding implements Bindings{
  @override
  void dependencies() {
    ProductBinding().dependencies();
  }

}