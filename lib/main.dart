import 'package:flutter/material.dart';
import 'package:light_lux/app.dart';

void main() {
  // GetStorage.init(); //enable when using history function
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Light Lux',
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData.dark().copyWith(),
      themeMode: ThemeMode.system,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          elevation: 1,
          actions: [
            TextButton.icon(
                onPressed: () {}, icon: Icon(Icons.code), label: Text('GitHub'))
          ],
        ),
        body: AppPage(),
      ),
    );
  }
}
