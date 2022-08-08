import 'package:flutter/material.dart';

class Body2 extends StatefulWidget {
  const Body2({Key? key}) : super(key: key);

  @override
  State<Body2> createState() => _Body2State();
}

class _Body2State extends State<Body2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Widget2"),
      ),
    );
  }
}
