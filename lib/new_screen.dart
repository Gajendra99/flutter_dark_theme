import 'package:flutter/material.dart';

class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('New Screen')),
      body: Container(
          child: Center(
        child: Text('New Screen'),
      )),
    );
  }
}
