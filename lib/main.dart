import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Demo(),
    );
  }
}

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Demo App'),
      ),
      extendBodyBehindAppBar: true,
      body: DoubleBackToCloseApp(
        snackBar: SnackBar(
            content: Text('Press again to close'),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.black12,
        ),
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/sign_up.png'),
            fit: BoxFit.cover,
          )),
        ),
      ),
    );
  }
}
