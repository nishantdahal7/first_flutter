import 'package:first_flutter/view/arithmetic_view.dart';
import 'package:first_flutter/view/circle_view.dart';
import 'package:first_flutter/view/dashboard_view.dart';
import 'package:first_flutter/view/responsive_design.dart';
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
        '/responsiveView': (context) => const ResponsiveDesign(),
      },
    ));
  }
}
