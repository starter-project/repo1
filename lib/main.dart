 import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage()
    );
  }
}



class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override

 String _var= 'Our First Flutter Application';

   _onPressed({String response}){
     setState(() {
       _var= response;
     });
  }
  Widget build(BuildContext context) {
    return 
     Scaffold(
       key: _scaffoldKey,
       appBar: AppBar(title: Text('Namaste!'),
         leading: IconButton(icon:Icon(Icons.menu), onPressed:() {
           _onPressed(response: 'menu button pressed');

           _scaffoldKey.currentState.openDrawer();
         }),

         backgroundColor: Colors.purple[200],
           actions: <Widget>[
             IconButton(icon:Icon(Icons.search), onPressed:() {
               _onPressed(response: 'search button pressed');
             }),
             
             IconButton(icon: Icon(Icons.settings), onPressed:() {
               _onPressed(response: 'settings button pressed');
               })
           ],
       ),
        drawer: Drawer(
          child: Center(
            child: Text('Drawer opened'),
          ),

        ),

        body:SafeArea(
            child:Center(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top:200),
                    child: Text(_var,
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

