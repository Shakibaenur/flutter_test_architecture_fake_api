

import 'package:test_flutter_architecture/src/core/network/end_points.dart';
import 'package:test_flutter_architecture/src/core/network/rest_client.dart';

class ProductRepository{
  Future<dynamic> fetchProductList() async {
    final res = await RestClient().get(
      APIType.PROTECTED,
      API.products,
    );
    return res.data;
  }
}