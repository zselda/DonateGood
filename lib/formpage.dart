import 'package:flutter/widgets.dart';
import 'shipmentpage.dart';
import 'package:flutter/material.dart';


void gotoShipmentPage(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => ShipmentPage()),
  );
}



class FormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Contact Page',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center),
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
           TextField(
            decoration: InputDecoration(
                hintText: 'Your name',
                labelText: 'Name',
                labelStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.deepPurple,
                ),
                border: UnderlineInputBorder()
            ),
            keyboardType: TextInputType.name,
          ),
            SizedBox(
              height: 15.0,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Your surname',
                  labelText: 'Surname',
                  labelStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.deepPurple,
                  ),
                  border: UnderlineInputBorder()
              ),
              keyboardType: TextInputType.name,
            ),
            SizedBox(
              height: 15.0,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Your email',
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.deepPurple,
                  ),
                  border: UnderlineInputBorder()
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 15.0,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Your phone number',
                  labelText: 'Phone Number',
                  labelStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.deepPurple,
                  ),
                  border: UnderlineInputBorder()
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 15.0,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Type of your donation',
                  labelText: 'Donation Information',
                  labelStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.deepPurple,
                  ),
                  border: UnderlineInputBorder()
              ),
              keyboardType: TextInputType.name,
            ),
            SizedBox(
              height: 15.0,
            ),
            RaisedButton(
              onPressed: () {
                gotoShipmentPage(context);
              },
              hoverColor: Colors.amber[100],
              color: Colors.deepPurple,
              splashColor: Colors.amber,
              shape:  RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text('Submit', style: TextStyle (fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,)
              ),
            ),




        ],


      ),

    );
  }}