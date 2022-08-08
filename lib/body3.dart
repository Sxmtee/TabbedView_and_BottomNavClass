import 'package:flutter/material.dart';

class Body3 extends StatefulWidget {
  const Body3({Key? key}) : super(key: key);

  @override
  State<Body3> createState() => _Body3State();
}

class _Body3State extends State<Body3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Widget3"),
      ),
    );
  }
}
