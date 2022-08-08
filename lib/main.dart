import 'package:flutter/material.dart';
import 'package:viewclass/BottomNavClass.dart';
import 'package:viewclass/TabbedViewClass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tabbed and Bottom Class",
      home: ViewClass(),
    );
  }
}

class ViewClass extends StatefulWidget {
  const ViewClass({Key? key}) : super(key: key);

  @override
  State<ViewClass> createState() => _ViewClassState();
}

class _ViewClassState extends State<ViewClass> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("VIEW CLASS"),
        centerTitle: true,
        leading: Icon(
          Icons.home,
          size: 30.0,
        ),
        actions: [
          Icon(Icons.settings, size: 20.0),
        ],
        elevation: 30.0,
        shadowColor: Colors.cyanAccent,
      ),
      body: SingleChildScrollView(
        child: Container(
            width: size.width,
            padding: EdgeInsets.all(50),
            child: Column(
              children: [
                Container(
                  width: size.width,
                  child: MaterialButton(
                    shape: StadiumBorder(),
                    onPressed: () {
                      var route = MaterialPageRoute(
                          builder: (context) => TabbedViewClass());
                      Navigator.push(context, route);
                    },
                    color: Colors.black12,
                    child: Text("Tabbed View Class"),
                    textColor: Colors.greenAccent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: size.width,
                  child: MaterialButton(
                    shape: StadiumBorder(),
                    onPressed: () {
                      var route = MaterialPageRoute(
                          builder: (context) => BottomNavClass());
                      Navigator.push(context, route);
                    },
                    color: Colors.black12,
                    child: Text("Bottom Nav Class"),
                    textColor: Colors.greenAccent,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
