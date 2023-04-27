import 'package:flutter/material.dart';

class RichTextView extends StatefulWidget {
  const RichTextView({super.key});

  @override
  State<RichTextView> createState() => _RichTextViewState();
}

class _RichTextViewState extends State<RichTextView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RichText(
          text: const TextSpan(
              text: 'My name ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: 'is ',
                    style: TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                  text: 'Nishant Dahal.',
                  style: TextStyle(
                      color: Colors.purple,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                )
              ]),
        ),
      ),
    );
  }
}



// body: Container(
//         color: Colors.blueGrey,
//         width: double.infinity,
//         child: const Text(
//           'Hello World!',
//           style: TextStyle(
//               fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),
//         ),
//       )
