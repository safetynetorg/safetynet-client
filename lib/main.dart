import 'package:flutter/material.dart';

import 'config/theme/theme.dart';
import 'screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Safteynet',
      theme: CustomTheme.lightTheme,
      home: Home(),
    );
  }
}
