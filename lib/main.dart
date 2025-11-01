import 'package:flutter/material.dart';
import 'theme.dart';
import 'screens/splash1.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Week6 Splash - David",
      theme: appTheme,
      home: const Splash1Screen(),
    );
  }
}
