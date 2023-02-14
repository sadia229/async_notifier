// import 'dart:async';

// import 'package:async_notifier/apps/weather/repository/product_repository.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// import '../model/product_model.dart';

// final productNotifyProvider =
//     AsyncNotifierProvider.autoDispose<ProductNotifier, ProductModel>(
//   ProductNotifier().getAllBills(),
// );


// ProductRepository? productRepository;

// class ProductNotifier extends AutoDisposeAsyncNotifier<ProductModel> {
//   getAllBills() async {
//     var response = await productRepository?.getProducts();
//     ProductModel? products = response;
//     state = products as AsyncValue<ProductModel>;
//   }

//   @override
//   FutureOr<ProductModel> build() {
//     //return getAllBills();
//     throw UnimplementedError();
//   }
// }
