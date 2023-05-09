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
                  Navigator.pushNamed(context, '/circleRoute');
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
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/nameView');
                },
                child: const Text(
                  "Nameview",
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
                  Navigator.pushNamed(context, '/richText');
                },
                child: const Text(
                  "RichText",
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
                  Navigator.pushNamed(context, '/columnView');
                },
                child: const Text(
                  "ColumnView",
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
                  Navigator.pushNamed(context, '/containerView');
                },
                child: const Text(
                  "Container View",
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
                  Navigator.pushNamed(context, '/imageView');
                },
                child: const Text(
                  "Image View",
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
                  Navigator.pushNamed(context, '/mediaRoute');
                },
                child: const Text(
                  "Media Query View",
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
                  Navigator.pushNamed(context, '/classworkRoute');
                },
                child: const Text(
                  "ClassWork",
                )),
          ),
        ],
      )),
    );
  }
}
