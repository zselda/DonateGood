import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'mappage.dart';
import 'listpage.dart';
import 'package:flutter/material.dart';

void gotoMapPage(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => MapPage()),
  );
}

void gotoListPage(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => ListPage()),
  );
}

List images = [
  "assets/books.png",
  "assets/003-banknote.png",
  "assets/fashion.png",
  "assets/furniture.png",
  "assets/toys.png"
];
List names = ['Books', "Money", "Clothes", "Furniture", "Toys"];



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('DonateGood',
              style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
          backgroundColor: Colors.deepPurple),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
              ),
            ),
            child: Center(
              child: Text(
                'What do you want to donate?',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
              height: 150.0,
              color: Colors.deepPurple[50],
              child: ListView.builder(
                padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        CircleAvatar( backgroundColor: Colors.grey[850],
                          radius: 40.0,
                          child: CircleAvatar(radius: 37.0, backgroundColor:Colors.deepPurple[100] ,
                            backgroundImage: AssetImage(images[index] ),

                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          names[index],
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              )),
          SizedBox(
            height: 16.0,
          ),
          Divider(
            color: Colors.amber[600],
            //height: 20,
            thickness: 3,
            indent: 0,
            endIndent: 120,
          ),

          Container(
            height: 18,
            padding: EdgeInsets.only(left: 10.0),
            alignment: Alignment.topLeft,
            child: Text( 'Donate to Foundations', style: TextStyle(color: Colors.deepPurple, fontSize:18.0, fontWeight: FontWeight.bold)
            ),
          ),

          Divider(
            color: Colors.amber[600],
            //height: 20,
            thickness: 3,
            indent: 0,
            endIndent: 60,
          ),
        SizedBox(
          height: 20.0,
        ),

        Container(
          height: 250.0,
          child: ListView(
              scrollDirection: Axis.horizontal,

              children: <Widget>[
          Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            child: new FittedBox(
              child: Material(
                  color: Colors.white,
                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(24.0),
                  shadowColor: Color(0x802196F3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 220,
                        height: 200,
                        child: ClipRRect(
                          borderRadius: new BorderRadius.circular(24.0),
                          child: Image(
                              fit: BoxFit.contain,
                              alignment: Alignment.topLeft,
                              image: AssetImage("assets/kaçuv.jpg")
                          ),
                        ),),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0.0, right: 16.0),
                          child: myDetailsContainer1(),
                        ),
                      ),
                    ],)
              ),
            ),
          ),
        ),
              Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      child: new FittedBox(
                        child: Material(
                      color: Colors.white,
                      elevation: 14.0,
                      borderRadius: BorderRadius.circular(24.0),
                      shadowColor: Color(0x802196F3),
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[

                           Container(
                        width: 220,
                        height: 180,
                        child: ClipRRect(
                          borderRadius: new BorderRadius.circular(24.0),
                          child: Image(
                              fit: BoxFit.contain,
                              alignment: Alignment.topLeft,
                              image: AssetImage("assets/tohum.jpg")
                          ),
                        ),),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0.0,  right: 16.0),
                          child: myDetailsContainer2(),
                        ),
                    ),
                  ],)
            ),
          ),
        ),
      ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    child: new FittedBox(
                      child: Material(
                          color: Colors.white,
                          elevation: 14.0,
                          borderRadius: BorderRadius.circular(24.0),
                          shadowColor: Color(0x802196F3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: 220,
                                height: 180,
                                child: ClipRRect(
                                  borderRadius: new BorderRadius.circular(24.0),
                                  child: Image(
                                      fit: BoxFit.contain,
                                      alignment: Alignment.centerLeft,
                                      image: AssetImage("assets/tema.jpg")
                                  ),
                                ),),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 0.0, right: 16.0),
                                  child: myDetailsContainer3(),
                                ),
                              ),
                            ],)
                      ),
                    ),
                  ),
                ),

          ]),

        ),

          SizedBox(
            height: 20.0,
          ),

          Divider(
            color: Colors.amber[600],
            //height: 20,
            thickness: 3,
            indent: 0,
            endIndent: 0,
          ),
         Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RaisedButton.icon(
                onPressed: () {
                  gotoListPage(context);
                },
                hoverColor: Colors.amber[100],
                color: Colors.deepPurple,
                splashColor: Colors.amber,
                shape:  RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
                label: Text('See Foundations', style: TextStyle (fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white,)
                ),
                icon: Icon(Icons.list, color: Colors.white),
              ),
              SizedBox(
                width: 0.0,
              ),
              RaisedButton.icon(
                onPressed: () {
                  gotoMapPage(context);
                },
                hoverColor: Colors.amber[100],
                color: Colors.deepPurple,
                splashColor: Colors.amber,
                shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                label: Text('Map', style: TextStyle (fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white,)
                ),
                icon: Icon(Icons.map_outlined, color: Colors.white),

              ),
            ],
          ),
        ],

      ),

    );
  }
  Widget myDetailsContainer1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(child: Text("KAÇUV",
            style: TextStyle(color: Colors.deepPurple, fontSize: 24.0,fontWeight: FontWeight.bold),)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(child: Text("Collected 2.6m TL",
                    style: TextStyle(color: Colors.black54, fontSize: 18.0,),)),
                ],)),
        ),
        Container(child: Text("reached out 400k children",
          style: TextStyle(color: Colors.black54, fontSize: 18.0,fontWeight: FontWeight.bold),)),
      ],
    );
  }
  Widget myDetailsContainer2() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(child: Text("Tohum Otizm",
            style: TextStyle(color: Colors.deepPurple, fontSize: 24.0,fontWeight: FontWeight.bold),)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(child: Text("Educated 2 thousands children",
                    style: TextStyle(color: Colors.black54, fontSize: 18.0,),)),
                ],)),
        ),
        Container(child: Text("and provided health support to many.",
          style: TextStyle(color: Colors.black54, fontSize: 18.0,fontWeight: FontWeight.bold),)),
      ],
    );
  }
  Widget myDetailsContainer3() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(child: Text("TEMA",
            style: TextStyle(color: Colors.deepPurple, fontSize: 24.0,fontWeight: FontWeight.bold),)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(child: Text("Planted 1.7 million trees",
                    style: TextStyle(color: Colors.black54, fontSize: 18.0,),)),
                ],)),
        ),
        Container(child: Text("and prevented countless disasters.",
          style: TextStyle(color: Colors.black54, fontSize: 18.0,fontWeight: FontWeight.bold),)),
      ],
    );
  }


}
