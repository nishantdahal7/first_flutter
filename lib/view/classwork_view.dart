import 'package:flutter/material.dart';

class ClassworkView extends StatefulWidget {
  const ClassworkView({super.key});

  @override
  State<ClassworkView> createState() => _ClassworkViewState();
}

class _ClassworkViewState extends State<ClassworkView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows and Column'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Container(
                  color: Colors.blueAccent,
                  height: double.infinity,
                  width: MediaQuery.of(context).size.width / 3,
                  alignment: Alignment.center,
                  child: const Text('Container 1'),
                ),
                Container(
                  color: Colors.red,
                  height: double.infinity,
                  width: MediaQuery.of(context).size.width / 3,
                  alignment: Alignment.center,
                  child: const Text('Container 2'),
                ),
                Container(
                  height: double.infinity,
                  color: Colors.blueAccent,
                  width: MediaQuery.of(context).size.width / 3,
                  alignment: Alignment.center,
                  child: const Text('Container 3'),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              color: Colors.blue[800],
              alignment: Alignment.center,
              child: const Text('Column 1'),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              color: Colors.blue[600],
              alignment: Alignment.center,
              child: const Text('Column 2'),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.blue[400],
              width: double.infinity,
              alignment: Alignment.center,
              child: const Text('Column 3'),
            ),
          ),
        ],
      ),
    );
  }
}
