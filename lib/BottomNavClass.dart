import 'package:flutter/material.dart';
import 'package:viewclass/body1.dart';
import 'package:viewclass/body2.dart';
import 'package:viewclass/body3.dart';

class BottomNavClass extends StatefulWidget {
  const BottomNavClass({Key? key}) : super(key: key);

  @override
  State<BottomNavClass> createState() => _BottomNavClassState();
}

class _BottomNavClassState extends State<BottomNavClass> {
  int CurrentIndex = 0;
  List<Widget> items = [Body1(), Body2(), Body3()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
      ),
      body: items[CurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: CurrentIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        onTap: (value) {
          setState(() {
            CurrentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Call"),
        ],
      ),
    );
  }
}
