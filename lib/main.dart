import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}



class MyHomePage extends StatelessWidget {

  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color(0xff303030),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        elevation: 0,
        backgroundColor: Color(0xff303030),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.more_vert, color: Colors.white),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 28.0, top: 7.0),
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/perfil.jpg'),
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 38.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Marlon Paulo',
                    style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.white,
                    ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.location_on, color: Colors.white, size: 17),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text('Alvares Machado - SP', style: TextStyle(color: Colors.white, wordSpacing: 2, letterSpacing: 4),),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
