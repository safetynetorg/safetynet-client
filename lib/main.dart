import 'package:client/utils/helpers/vibrate.dart';
import 'package:flutter/material.dart';

import 'config/theme/theme.dart';

void main() {
  runApp(MyApp());
}

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

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            vibrate();
          },
          borderRadius: BorderRadius.all(Radius.circular(30)),
          child: Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: Container(
              padding: EdgeInsets.all(30),
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 3,
              child: Image.asset('assets/images/exclamation.png'),
            ),
          ),
        ),
      ),
    );
  }
}
