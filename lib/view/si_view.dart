import 'package:first_flutter/model/si_calculation.dart';
import 'package:flutter/material.dart';

class SiView extends StatefulWidget {
  const SiView({super.key});

  @override
  State<SiView> createState() => _SiViewState();
}

class _SiViewState extends State<SiView> {
  var gap = const SizedBox(
    height: 12,
  );
  double principle = 0;
  double time = 0;
  double rate = 0;
  SI arithmetic = SI();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Interest"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                gap,
                TextFormField(
                  onChanged: (value) {
                    principle = double.parse(value);
                  },
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      labelText: 'Principle',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red))),
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
                    onPressed: () {
                      setState(() {
                        arithmetic.calculate;
                      });
                    },
                    child: const Text('CALCULATE'),
                  ),
                ),
                gap,
                SizedBox(
                  child: Text(
                      'Result is: ${arithmetic.calculate(principle, time, rate)}'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
