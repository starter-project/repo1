 import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData.light(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return 
     Scaffold(
       appBar: AppBar(title: Text('Namaste!'),
         bottomOpacity: 3,
         backgroundColor: Colors.purple[200]
       ),
    


        body:SafeArea(
            child:Center(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top:200),
                    child: Text('Our First Flutter Application',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,)
              ),
                  )
              ]
              ),
        ),
    ),

      );



  }
}

