import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter_architecture/src/feature/product/controller/product_controller.dart';
import 'package:test_flutter_architecture/src/feature/product/widgets/product_list_view.dart';

class ProductPage extends GetView<ProductController> {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.getProducts();
    return Scaffold(
      appBar: AppBar(
        title: const Text("jdvfjhdsfb"),
      ),
      body: Container(
        child: Column(
          children: [
            Obx(() {
              if (controller.pageState == controller.errorState) {
                return Text("Error");
              } else if (controller.pageState == controller.loadingState) {
                return CircularProgressIndicator();
              } else {
                return ProductListView(listItems: controller.productList.value);
              }
              return Container();
            }),
          ],
        ),
      ),
    );
  }
}
