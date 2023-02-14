// import 'dart:developer';
// import 'package:async_notifier/general/constants/api/base_client.dart';
// import 'package:async_notifier/general/constants/url.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/cupertino.dart';
// import '../model/product_model.dart';

// ProductModel? productModel;

// class ProductRepository {
//   Future<ProductModel> getProducts({context}) async {
//     try {
//       var response = await BaseClient.get(
//         url: Urls.products,
//       );
//       if (response.statusCode == 200) {
//         productModel = ProductModel.fromJson(response.data);
//       }
//       if (response.statusCode == 404) {
//         productModel = ProductModel.fromJson(response.data);
//         log('No address data found');
//         debugPrint("data null");
//       }
//       return productModel!;
//     } on DioError catch (e) {
//       rethrow;
//     }
//   }
// }
