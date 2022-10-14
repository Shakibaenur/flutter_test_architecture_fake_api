import 'dart:convert';

import 'package:get/get.dart';
import 'package:test_flutter_architecture/src/core/base/state.dart';
import 'package:test_flutter_architecture/src/core/logger.dart';
import 'package:test_flutter_architecture/src/feature/product/model/product_model.dart';
import 'package:test_flutter_architecture/src/feature/product/repository/product_repository.dart';

class ProductController extends GetxController{
  final ProductRepository _productRepository = ProductRepository();


  final Rx<PageState> _pageStateController = Rx(PageState.initial);

  get pageState => _pageStateController.value;
  get loadingState =>  PageState.loading;
  get errorState =>  PageState.error;
  get successState =>  PageState.success;

  final RxList<ProductModel> productList=<ProductModel>[].obs;

  Future<void> getProducts() async {
    _pageStateController(loadingState);
    try{
      final res=await _productRepository.fetchProductList();
      //List<dynamic> while Map object
      productList.value=(res as List<dynamic>).map((e) => ProductModel.fromJson(e)).toList();
      _pageStateController(successState);

    }catch(e,stackTrace){
      Log.error(e.toString());
      Log.error(stackTrace.toString());
      _pageStateController(errorState);

    }
  }
}
