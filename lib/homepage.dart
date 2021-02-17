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
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
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
            height: 250,
          ),
          Container(
            height: 40,
            padding: EdgeInsets.only(left: 10.0, right: 10.0 ),

            child: Text( 'Donate to Foundations', style: TextStyle(color: Colors.deepPurple, fontSize: 30.0, fontWeight: FontWeight.bold)
            ),
          ),
          SizedBox(
            height: 15,
          ),
          RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            onPressed: () {
              gotoMapPage(context);
            },
            color: Colors.deepPurple,
            child: Text(
              'See Foundations on Nearby',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            onPressed: () {
              gotoListPage(context);
            },
            color: Colors.deepPurple,
            child: Text(
              'See All Foundations',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
