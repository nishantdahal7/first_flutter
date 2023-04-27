import 'package:first_flutter/view/arithmetic_view.dart';
import 'package:first_flutter/view/circle_view.dart';
import 'package:first_flutter/view/column_view.dart';
import 'package:first_flutter/view/dashboard_view.dart';
import 'package:first_flutter/view/name_view.dart';
import 'package:first_flutter/view/responsive_design.dart';
import 'package:first_flutter/view/rich_text_view.dart';
import 'package:first_flutter/view/si_view.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const DashboardView(),
        '/siRoute': (context) => const SiView(),
        '/arithmeticRoute': (context) => const ArithmeticView(),
        '/circle': (context) => const CircleView(),
        '/responsiveView': (context) => const ResponsiveDesignView(),
        '/nameView': (context) => const NamesButton(),
        '/richText': (context) => const RichTextView(),
        '/columnView': (context) => const ColumnView(),
      },
    ));
  }
}
