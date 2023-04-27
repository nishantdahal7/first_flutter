import 'package:flutter/material.dart';

class NamesButton extends StatefulWidget {
  const NamesButton({super.key});

  @override
  _NamesButtonState createState() => _NamesButtonState();
}

class _NamesButtonState extends State<NamesButton> {
  List<String> names = ['John', 'Mary', 'Bob', 'Sarah'];
  int currentNameIndex = 0;

  void updateNameIndex() {
    setState(() {
      currentNameIndex = (currentNameIndex + 1) % names.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Names Button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Click the button to see a name:',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                updateNameIndex();
              },
              child: Text(
                names[currentNameIndex],
                style: const TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
