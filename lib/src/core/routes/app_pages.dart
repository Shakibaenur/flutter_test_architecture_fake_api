import 'package:get/get.dart';
import 'package:test_flutter_architecture/src/feature/product/binding/product_binding.dart';
import 'package:test_flutter_architecture/src/core/routes/app_routes.dart';
import 'package:test_flutter_architecture/src/feature/product/view/ProductPage.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.product,
      page: () => const ProductPage(),
      binding: ProductBinding(),
    ),
  ];
}
