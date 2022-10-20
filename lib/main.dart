import 'package:flutter/material.dart';

//importing material design library
void main() {
  runApp(MaterialApp(
    //runApp method
    home: HomePage(),
  )); //MaterialApp
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool value = false;
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  @override
//App widget tree
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Checkbox'),
          backgroundColor: Colors.greenAccent[400],
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Menu',
            onPressed: () {},
          ), //IconButton
        ), //AppBar
        body: Center(
          /** Card Widget **/
          child: Column(
            children: [
              buildCard('kskjsjcccjkldj', value),
              buildCard('kskjsjcccjkldj', value1),
              buildCard('kskjsjcccjkldj', value2),
              buildCard('kskjsjcccjkldj', value3),
            ],
          ),
          //Card
        ), //Center//Center
      ), //Scaffold
    ); //MaterialApp
  }

  Card buildCard(String text, bool deyer) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          child: Column(
            children: [
              Text(
                'Checkbox',
                style: TextStyle(
                    color: Colors.greenAccent[400], fontSize: 30), //TextStyle
              ), //Text
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ), //SizedBox
                  Text(
                    text,
                    style: TextStyle(fontSize: 17.0),
                  ), //Text
                  SizedBox(width: 0), //SizedBox
                  /** Checkbox Widget **/
                  Checkbox(
                    value: deyer,
                    onChanged: (bool? deyer) {
                      setState(() {
                        deyer = deyer!;
                      });
                    },
                  ), //Checkbox
                ], //<Widget>[]
              ), //Row
            ],
          ),
        ), //SizedBox
      ), //Padding
    );
  }
}
