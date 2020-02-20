import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  double count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(count.toString()),
                Text("Quick"),
                Text("Maffs"),

                FlatButton(
                  child: Text("Multiply by two"),
                  color: Colors.blue,
                  onPressed: clicktwo,
                ),
                RaisedButton(
                  child: Text("Divide by two"),
                  color: Colors.blue,
                  onPressed: click,
                )
              ],
            ),
          ),
        )
    );
  }

  click() {
    print("Action complete");
    setState(() {
      count = count / 2;
    });
  }

  clicktwo() {
    print("yes");
    setState(() {
      count = count * 2;
    });
  }
}
