import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter_architecture/src/core/bindings/initial_binding.dart';
import 'package:test_flutter_architecture/src/feature/product/binding/product_binding.dart';
import 'package:test_flutter_architecture/src/core/routes/app_pages.dart';
import 'package:test_flutter_architecture/src/feature/product/view/ProductPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: InitialBinding(),
      home: const ProductPage(),
      getPages: AppPages.pages,
    );
  }
}
