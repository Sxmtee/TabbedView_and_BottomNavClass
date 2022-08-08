import 'package:flutter/material.dart';
import 'package:viewclass/body1.dart';
import 'package:viewclass/body2.dart';
import 'package:viewclass/body3.dart';

class TabbedViewClass extends StatefulWidget {
  const TabbedViewClass({Key? key}) : super(key: key);

  @override
  State<TabbedViewClass> createState() => _TabbedViewClassState();
}

class _TabbedViewClassState extends State<TabbedViewClass> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WHATSAPP"),
          bottom: TabBar(
            tabs: [Tab(text: "CHATS"), Tab(text: "STATUS"), Tab(text: "CALLS")],
          ),
        ),
        body: TabBarView(
          children: [Body1(), Body2(), Body3()],
        ),
      ),
    );
  }
}
