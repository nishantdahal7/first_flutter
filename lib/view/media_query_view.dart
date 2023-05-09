import 'package:first_flutter/common/snackbar_widget.dart';
import 'package:flutter/material.dart';

class MediaQueryView extends StatefulWidget {
  const MediaQueryView({super.key});

  @override
  State<MediaQueryView> createState() => _MediaQueryViewState();
}

class _MediaQueryViewState extends State<MediaQueryView> {
  @override
  Widget build(BuildContext context) {
    //double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Media Query View'),
      //   centerTitle: true,
      // ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(color: Colors.green),
                child: ElevatedButton(
                    onPressed: () {
                      showSnackBar(context, 'Hello World');
                    },
                    child: const Text('Click Me')),
              ),
            ),
            Expanded(
              //fit: FlexFit.loose, //default
              flex: 3,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(color: Colors.red),
                child: ElevatedButton(
                    onPressed: () {
                      showSnackBar(context, 'Hello World 2', color: Colors.red);
                    },
                    child: const Text('Click Me')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



//Notes:
// use flexible and expanded only within multi chind widgets