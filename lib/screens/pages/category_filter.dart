import 'package:darji/screens/pages/products_screen.dart';
import 'package:flutter/material.dart';

import '../../screens/pages/home_screen.dart';

// void navigateto({required BuildContext context, required String cat}) {
//   // Navigator.pop(context);
//   Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (context) {
//         return ProductsScreen(
//           category: cat,
//         );
//       },
//     ),
//   );
// }
//
// Widget filter(BuildContext context) {
//   return Padding(
//     padding: const EdgeInsets.all(6.0),
//     child: Container(
//       width: 90,
//       height: 90,
//       child: ListView(
//         // shrinkWrap: true,
//         scrollDirection: Axis.horizontal,
//         children: [
//           // GestureDetector(
//           //   onTap: () {
//           //     navigateto(context: context, cat: "Kurta");
//           //   },
//           //   child: Container(
//           //     width: 50,
//           //     height: 50,
//           //     child: Column(
//           //       children: [
//           //         Image.asset(
//           //           'assets/images/im1.jpeg',
//           //         ),
//           //         Text("Kurta")
//           //       ],
//           //     ),
//           //   ),
//           // ),
//           // SizedBox(
//           //   width: 40,
//           // ),
//           // GestureDetector(
//           //   onTap: () {
//           //     navigateto(context: context, cat: "Coat");
//           //   },
//           //   child: Container(
//           //     width: 50,
//           //     height: 50,
//           //     child: Column(
//           //       children: [
//           //         Image.asset(
//           //           'assets/images/im1.jpeg',
//           //         ),
//           //         Text("Coat")
//           //       ],
//           //     ),
//           //   ),
//           // ),
//           // SizedBox(
//           //   width: 40,
//           // ),
//           // GestureDetector(
//           //   onTap: () {
//           //     navigateto(context: context, cat: "Blazer");
//           //   },
//           //   child: Container(
//           //     width: 52,
//           //     height: 50,
//           //     child: Column(
//           //       children: [
//           //         Image.asset('assets/images/im1.jpeg'),
//           //         Text("Blazer")
//           //       ],
//           //     ),
//           //   ),
//           // ),
//           // SizedBox(
//           //   width: 40,
//           // ),
//           // GestureDetector(
//           //   onTap: () {
//           //     navigateto(context: context, cat: "Jacket");
//           //   },
//           //   child: Container(
//           //     width: 50,
//           //     height: 50,
//           //     child: Column(
//           //       children: [
//           //         Image.asset('assets/images/im1.jpeg'),
//           //         Text("Jacket")
//           //       ],
//           //     ),
//           //   ),
//           // ),
//           // SizedBox(
//           //   width: 40,
//           // ),
//           // GestureDetector(
//           //   onTap: () {
//           //     navigateto(context: context, cat: "Shirt");
//           //   },
//           //   child: Container(
//           //     width: 50,
//           //     height: 50,
//           //     child: Column(
//           //       children: [
//           //         Image.asset('assets/images/im1.jpeg'),
//           //         Text("Shirt")
//           //       ],
//           //     ),
//           //   ),
//           // ),
//           // SizedBox(
//           //   width: 40,
//           // ),
//           // GestureDetector(
//           //   onTap: () {
//           //     navigateto(context: context, cat: "Formals");
//           //   },
//           //   child: Container(
//           //     width: 50,
//           //     height: 50,
//           //     child: Column(
//           //       children: [
//           //         Image.asset('assets/images/im1.jpeg'),
//           //         Text("Formals")
//           //       ],
//           //     ),
//           //   ),
//           // ),
//         ],
//       ),
//     ),
//   );
// }
