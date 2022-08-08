import 'package:flutter/material.dart';

class Body1 extends StatefulWidget {
  const Body1({Key? key}) : super(key: key);

  @override
  State<Body1> createState() => _Body1State();
}

class _Body1State extends State<Body1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Widget1"),
      ),
    );
  }
}
