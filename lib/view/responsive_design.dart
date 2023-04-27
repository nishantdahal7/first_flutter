import 'package:flutter/material.dart';

class ResponsiveDesignView extends StatefulWidget {
  const ResponsiveDesignView({super.key});

  @override
  State<ResponsiveDesignView> createState() => _ResponsiveDesignViewState();
}

class _ResponsiveDesignViewState extends State<ResponsiveDesignView> {
  var gap = const SizedBox(
    height: 12,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive Layout"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        children: [
          gap,
          SizedBox(
            height: 150,
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Button1",
                  style: TextStyle(fontSize: 30),
                )),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Button 2",
                    style: TextStyle(fontSize: 30),
                  )),
              ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Button 2",
                    style: TextStyle(fontSize: 30),
                  )),
            ],
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Button 2",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Button 2",
                    style: TextStyle(fontSize: 30),
                  )),
            ],
          )
        ],
      )),
    );
  }
}
