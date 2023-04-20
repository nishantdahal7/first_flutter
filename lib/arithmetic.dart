import 'package:flutter/material.dart';

class ArithmeticView extends StatefulWidget {
  const ArithmeticView({super.key});

  @override
  State<ArithmeticView> createState() => _ArithmeticViewState();
}

class _ArithmeticViewState extends State<ArithmeticView> {
  var gap = const SizedBox(
    height: 12,
  );
  double principle = 0;
  double time = 0;
  double rate = 0;
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Interest"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            gap,
            TextFormField(
              onChanged: (value) {
                principle = double.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  labelText: 'Principle', border: OutlineInputBorder()),
            ),
            gap,
            TextFormField(
              onChanged: (value) {
                time = double.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  labelText: 'Time', border: OutlineInputBorder()),
            ),
            gap,
            TextFormField(
              onChanged: (value) {
                rate = double.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  labelText: 'Rate', border: OutlineInputBorder()),
            ),
            gap,
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('CALCULATE'),
              ),
            ),
            gap,
            SizedBox(
              child: Text('Result is: $result'),
            )
          ],
        ),
      ),
    );
  }
}
