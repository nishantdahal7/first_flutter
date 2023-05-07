import 'package:flutter/material.dart';

class ColumnView extends StatelessWidget {
  const ColumnView({super.key});

  //Spacer moves the item to the end either row or column

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column View'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < 10; i++) ...{
              if (i % 2 == 0 || i == 5) ...{
                Container(
                  height: 200,
                  width: 200,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.red),
                  child: Text(i.toString()),
                )
              }
            }
          ],
        ),
      ),
    );
  }
}



  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: SafeArea(
  //       child: Column(
  //         children: const [
  //           Icon(
  //             Icons.star,
  //             color: Colors.red,
  //             size: 100,
  //           ),
  //           Icon(
  //             Icons.star,
  //             color: Colors.brown,
  //             size: 100,
  //           ),
  //           Spacer(),
  //           Icon(
  //             Icons.star,
  //             color: Colors.purple,
  //             size: 100,
  //           ),
  //         ],
  //       ),
  //     ),
  //   );

// Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               children: const [
//                 Icon(
//                   Icons.star,
//                   color: Colors.red,
//                   size: 100,
//                 ),
//               ],
//             ),
//             Row(
//               children: const [
//                 Icon(
//                   Icons.star,
//                   color: Colors.brown,
//                   size: 100,
//                 ),
//                 Icon(
//                   Icons.star,
//                   color: Colors.purple,
//                   size: 100,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
