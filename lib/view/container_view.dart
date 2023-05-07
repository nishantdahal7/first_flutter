import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: const Text('Container'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.cyanAccent,
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
          ),
          child: const Text('Hello World!'),
        ),
      ),
    );
  }
}


// borderRadius: const BorderRadius.only(
//                     bottomLeft = const Radius.circular(10),
//                     bottomRight = const Radius.circular(10))),
//             child: const Text('Hello World!'),