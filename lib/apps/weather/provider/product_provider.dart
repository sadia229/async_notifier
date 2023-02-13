
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/product_model.dart';


final billNotifyProvider =
StateNotifierProvider<BillsNotifier, List<ProductModel>>((ref) {
  return BillsNotifier(billRepository: ProductRepository());
});


class BillsNotifier extends StateNotifier<List<ProductModel>> {
  BillRepository billRepository;

  BillsNotifier({required this.billRepository}) : super([]) {
    getAllBills();
  }

  getAllBills() async {
    var response = await billRepository.getBills();
    List<Data> productData = response.data!.map((e) => e).toList();
    state = productData;
  }
}

