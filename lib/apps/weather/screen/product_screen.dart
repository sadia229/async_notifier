// import 'package:async_notifier/apps/weather/provider/product_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// class ProductsScreen extends ConsumerWidget {
//   const ProductsScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final data = ref.watch(productNotifyProvider);
//     return Scaffold(
//       appBar: AppBar(elevation: 0),
//       body: Container(
//         margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
//         child: Column(
//           children: [
//             ListView.builder(
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               itemBuilder: (context, index) {
//                 return const ListTile(
//                   title: Text('data'),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
