import 'package:flutter/material.dart';
import 'package:flutter_themes/items.dart';
import 'package:flutter_themes/new_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light;

  IconData _getThemeIcon() {
    return _themeMode == ThemeMode.light
        ? Icons.nightlight_round
        : Icons.wb_sunny_rounded;
  }

  void _toggleTheme() {
    setState(() {
      _themeMode =
          _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _themeMode,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Toggle Theme'),
          actions: [
            IconButton(
                onPressed: () => _toggleTheme(), icon: Icon(_getThemeIcon()))
          ],
        ),
        body: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Code By Chance',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Items(),
            ElevatedButton(
                onPressed: () {
                  Get.to(NewScreen());
                },
                child: Text(
                  'New Screen',
                ))
          ],
        )),
      ),
    );
  }
}
