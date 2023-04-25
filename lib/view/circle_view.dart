import 'package:first_flutter/model/area_of_circle_calculate.dart';
import 'package:flutter/material.dart';

class CircleView extends StatefulWidget {
  const CircleView({super.key});

  @override
  State<CircleView> createState() => _CircleViewState();
}

class _CircleViewState extends State<CircleView> {
  var gap = const SizedBox(
    height: 12,
  );
  double radius = 0;

  Circle circle = Circle();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Area of Circle"),
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
                    radius = double.parse(value);
                  },
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      labelText: 'Radius',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red))),
                ),
                gap,
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        circle.calculate;
                      });
                    },
                    child: const Text('CALCULATE'),
                  ),
                ),
                gap,
                SizedBox(
                  child: Text('Result is: ${circle.calculate(radius)}'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
