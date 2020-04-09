import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List tags = [
    'Viagens',
    'Urbano',
    'Fashion',
    'Lifestyle',
    'Edição',
    'Tecnologia',
    'Entretenimento'
  ];

  List categories = [
    'Namorada',
    'Favoritos',
    'Divertidas',
    'Trabalho',
    'Viagem',
    'Rolê'
  ];

  int idfoto = 0;

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
          //top section
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
                    Text(
                      'Marlon Paulo',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.location_on,
                              color: Colors.white, size: 17),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              'Alvares Machado - SP',
                              style: TextStyle(
                                  color: Colors.white,
                                  wordSpacing: 2,
                                  letterSpacing: 4),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          //section seguidores
          Padding(
            padding: const EdgeInsets.only(
                right: 38.0, left: 38, top: 15, bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('102k',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25)),
                    Text(
                      'Seguidores',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Container(
                  color: Colors.white,
                  width: 0.3,
                  height: 22,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('30k',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25)),
                    Text(
                      'Seguidores',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Container(
                  color: Colors.white,
                  width: 0.3,
                  height: 22,
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 18, right: 18, top: 8, bottom: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(33)),
                    gradient: LinearGradient(
                        colors: [Color(0xff6D0EB5), Color(0xff4059F1)],
                        begin: Alignment.bottomRight,
                        end: Alignment.centerLeft),
                  ),
                  child: Text('Seguir',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                )
              ],
            ),
          )
          //tags section
          ,
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8.0),
            child: Container(
                height: 44,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: tags.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(33),
                            border: Border.all(color: Colors.white12)),
                        margin: EdgeInsets.only(right: 13),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 13.0, bottom: 5, right: 20, left: 20),
                          child: Text(
                            tags[index],
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      );
                    })),
          ),
          //section galeria
          Expanded(
              child: Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xffEFEFEF),
              borderRadius: BorderRadius.vertical(top: Radius.circular(34)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, right: 25, left: 25),
                  child: Text('Portifolio',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 33)),
                ),
                Container(
                  padding: EdgeInsets.only(right: 25, left: 25),
                  height: 40,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 17.0, top: 3),
                        child: index == 1
                            ? Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    categories[index],
                                    style: TextStyle(
                                        color: Color(0xff434AE8), fontSize: 19),
                                  ),
                                  CircleAvatar(
                                    radius: 2,
                                    backgroundColor: Color(0xff434AE8),
                                  ),
                                ],
                              )
                            : Text(categories[index],
                                style: TextStyle(
                                    color: Colors.grey.withOpacity(0.9),
                                    fontSize: 19)),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          padding: EdgeInsets.only(right: 25, left: 25),
                          height: 300,
                          child: StaggeredGridView.countBuilder(
                            crossAxisCount: 4,
                            itemCount: 4,
                            itemBuilder: (BuildContext context, int index) =>
                                Container(
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                child: Image.asset(
                                  'assets/${index + 1}.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            staggeredTileBuilder: (int count) =>
                                StaggeredTile.count(2, count.isEven ? 3 : 1),
                            mainAxisSpacing: 9,
                            crossAxisSpacing: 8,
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(right: 12, left: 12),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(33))),
                        height: 55,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(Icons.home, color: Color(0xff434BE6)),
                            Icon(
                              Icons.notifications_active,
                              color: Colors.grey.withOpacity(0.6),
                            ),
                            SizedBox(
                              width: 33,
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.grey.withOpacity(0.6),
                            ),
                            Icon(
                              Icons.person,
                              color: Colors.grey.withOpacity(0.6),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 23,
                        child: Container(
                          height: 66,
                          width: 66,
                          child: Icon(Icons.add, size: 27, color: Colors.white),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(55),
                            ),
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xff6615C1),
                                  Color(0xff484FDE),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
