import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hi!"),
      ),
      body: (MediaQuery.of(context).orientation == Orientation.portrait) ? Column(
        children: generateContainer(),
      ) : Row(
          children: generateContainer(),
      )
    );
  }

  List<Widget> generateContainer(){
    return <Widget>[
      Container(color: Colors.red, width: 100, height: 100,),
      Container(color: Colors.blue, width: 100, height: 100,),
      Container(color: Colors.yellow, width: 100, height: 100,)
    ];
  }

}

