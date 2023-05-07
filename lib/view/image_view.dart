import 'package:flutter/material.dart';

class ImageView extends StatefulWidget {
  const ImageView({super.key});

  @override
  State<ImageView> createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  String _imagePath = 'assets/images/rashford.png';

  void _changeImage() {
    setState(() {
      _imagePath = 'assets/images/bruno.png';
    });
  }

  var gap = const SizedBox(
    height: 12,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Images'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            gap,
            const CircleAvatar(
              radius: 150,
              backgroundImage: AssetImage('assets/images/rashford.png'),
            ),
            // SizedBox(
            //   child: Image.asset('assets/images/rashford.png'),
            // ),
            gap,
            SizedBox(
              child: ElevatedButton(
                onPressed: (_changeImage),
                child: const Text('Click Me'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
