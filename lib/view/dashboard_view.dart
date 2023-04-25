import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/arithmeticRoute');
                },
                child: const Text(
                  "Arithmetic",
                )),
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/siRoute');
                },
                child: const Text(
                  "Simple Interest",
                )),
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/circle');
                },
                child: const Text(
                  "Circle",
                )),
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/responsiveView');
                },
                child: const Text(
                  "Responsive",
                )),
          ),
        ],
      )),
    );
  }
}
