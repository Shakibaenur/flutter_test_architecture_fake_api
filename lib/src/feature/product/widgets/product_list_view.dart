import 'package:flutter/material.dart';
import 'package:test_flutter_architecture/src/feature/product/model/product_model.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({
    Key? key,
    required this.listItems,
  }) : super(key: key);
  final List<ProductModel> listItems;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 124,
      child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: listItems.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              child: Center(child: Text('Entry ${listItems[index]}')),
            );
          }
      ),
    );
  }
}
