import 'dart:async';
import 'homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MapPage extends StatefulWidget {
  @override
  MapPageState createState() => MapPageState();
}
void gotoHomePage(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => HomePage()),
  );
}

class MapPageState extends State<MapPage> {
  Completer<GoogleMapController> _controller = Completer();

  @override
  void initState() {
    super.initState();
  }

  double zoomVal = 5.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(FontAwesomeIcons.arrowLeft),
            onPressed: () {
             gotoHomePage(context);
            }),
        title: Text("Istanbul"),
        actions: <Widget>[
          IconButton(
              icon: Icon(FontAwesomeIcons.search),
              onPressed: () {
                //
              }),
        ],
      ),
      body: Stack(
        children: <Widget>[
          _buildGoogleMap(context),
          _zoomminusfunction(),
          _zoomplusfunction(),
          _buildContainer(),
        ],
      ),
    );
  }

  Widget _zoomminusfunction() {
    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(
          icon: Icon(FontAwesomeIcons.searchMinus,
              color: Colors.deepPurple),
          onPressed: () {
            zoomVal--;
            _minus(zoomVal);
          }),
    );
  }

  Widget _zoomplusfunction() {
    return Align(
      alignment: Alignment.topRight,
      child: IconButton(
          icon:
              Icon(FontAwesomeIcons.searchPlus, color: Colors.deepPurple),
          onPressed: () {
            zoomVal++;
            _plus(zoomVal);
          }),
    );
  }

  Future<void> _minus(double zoomVal) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: LatLng(41.078931, 29.022523), zoom: zoomVal)));
  }

  Future<void> _plus(double zoomVal) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: LatLng(41.078931, 29.022523), zoom: zoomVal)));
  }

  Widget _buildContainer() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 150.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://www.losev.org.tr/v6/Galeri/SS/hay%C4%B1rsever-bag%C4%B1sc%C4%B1lar%C4%B1na-tesekkur-351-850.jpg",
                  41.077580,
                  29.020628,
                  "LÖSEV"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://media-exp1.licdn.com/dms/image/C4D0BAQFHusHjsW9bHA/company-logo_200_200/0/1583146069688?e=2159024400&v=beta&t=oOANT8LM2MUK2EPZ4txsXhbLr9FAI0QnypbAykf9uU8",
                  41.078025,
                  29.019080,
                  "AÇEV"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://pbs.twimg.com/profile_images/1232387986119065600/GEx4_aZx_400x400.jpg",
                  41.075987,
                  29.017706,
                  "Ahbap"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _boxes(String _image, double lat, double long, String assosName) {
    return GestureDetector(
      onTap: () {
        _gotoLocation(lat, long);
      },
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
                    width: 180,
                    height: 200,
                    child: ClipRRect(
                      borderRadius: new BorderRadius.circular(24.0),
                      child: Image(
                        fit: BoxFit.fill,
                        image: NetworkImage(_image),
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DetailsContainer1(assosName),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }

  Widget DetailsContainer1(String assosName) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            assosName,
            style: TextStyle(
                color: Color(0xff6200ee),
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          )),
        ),
        SizedBox(height: 5.0),
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
                child: Text(
              "4.8",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18.0,
              ),
            )),
            Container(
              child: Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
              child: Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
              child: Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
              child: Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
              child: Icon(
                FontAwesomeIcons.solidStarHalf,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
          ],
        )),
        SizedBox(height: 5.0),
        Container(
            child: Text(
          "Closed \u00B7 Opens 8:30 - 17:30",
          style: TextStyle(
              color: Colors.black54,
              fontSize: 18.0,
              fontWeight: FontWeight.bold),
        )),
      ],
    );
  }
  Widget _buildGoogleMap(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition:
            CameraPosition(target: LatLng(41.078931, 29.022523), zoom: 12),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: Set.from(allMarkers)

      ),
    );
  }

  Future<void> _gotoLocation(double lat, double long) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
      target: LatLng(lat, long),
      zoom: 15,
      tilt: 50.0,
      bearing: 45.0,
    )));
  }
}

List <Marker> allMarkers= [

Marker(
markerId: MarkerId('losev'),
position: LatLng(41.077580, 29.020628),
infoWindow: InfoWindow(title: 'LÖSEV'),
icon: BitmapDescriptor.defaultMarkerWithHue(
BitmapDescriptor.hueViolet,
),
),
Marker(
markerId: MarkerId('acev'),
position: LatLng(41.078025, 29.019080),
infoWindow: InfoWindow(title: 'AÇEV'),
icon: BitmapDescriptor.defaultMarkerWithHue(
BitmapDescriptor.hueViolet,
),
),
Marker(
markerId: MarkerId('ahbap'),
position: LatLng(41.075987, 29.017706),
infoWindow: InfoWindow(title: 'Ahbap'),
icon: BitmapDescriptor.defaultMarkerWithHue(
BitmapDescriptor.hueViolet,
),
),
Marker(
markerId: MarkerId('levent'),
position: LatLng(41.079901, 29.020762),
infoWindow: InfoWindow(title: 'TOG'),
icon: BitmapDescriptor.defaultMarkerWithHue(
BitmapDescriptor.hueViolet,
),
),
Marker(
markerId: MarkerId('levent2'),
position: LatLng(41.079448, 29.023811),
infoWindow: InfoWindow(title: 'Haytap'),
icon: BitmapDescriptor.defaultMarkerWithHue(
BitmapDescriptor.hueViolet,
),
),
Marker(
markerId: MarkerId('levent3'),
position: LatLng(41.081551, 29.019645),
infoWindow: InfoWindow(title: 'Kaçuv'),
icon: BitmapDescriptor.defaultMarkerWithHue(
BitmapDescriptor.hueViolet,
),
),
];


/*@override
void initState(){
  allMarkers.add(
    Marker(
      markerId: MarkerId('losev'),
      position: LatLng(41.077580, 29.020628),
      infoWindow: InfoWindow(title: 'LÖSEV'),
      icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueViolet,
      ),
    ));
    Marker(
      markerId: MarkerId('acev'),
      position: LatLng(41.078025, 29.019080),
      infoWindow: InfoWindow(title: 'AÇEV'),
      icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueViolet,
      ),
    );
    Marker(
      markerId: MarkerId('ahbap'),
      position: LatLng(41.075987, 29.017706),
      infoWindow: InfoWindow(title: 'Ahbap'),
      icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueViolet,
      ),
    );
    Marker(
      markerId: MarkerId('levent'),
      position: LatLng(41.079901, 29.020762),
      infoWindow: InfoWindow(title: 'TOG'),
      icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueViolet,
      ),
    );
    Marker(
      markerId: MarkerId('levent2'),
      position: LatLng(41.079448, 29.023811),
      infoWindow: InfoWindow(title: 'Haytap'),
      icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueViolet,
      ),
    );
    Marker(
      markerId: MarkerId('levent3'),
      position: LatLng(41.081551, 29.019645),
      infoWindow: InfoWindow(title: 'Kaçuv'),
      icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueViolet,
      ),
    );
}
*/

/* Set<Marker> markers;
createMarker() {
return <Marker> [
  Marker(
  markerId: MarkerId('losev'),
  position: LatLng(41.077580, 29.020628),
  infoWindow: InfoWindow(title: 'LÖSEV'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
  BitmapDescriptor.hueViolet,
  ),
  ),
  Marker(
  markerId: MarkerId('acev'),
  position: LatLng(41.078025, 29.019080),
  infoWindow: InfoWindow(title: 'AÇEV'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
  BitmapDescriptor.hueViolet,
  ),
  ),
   Marker(
  markerId: MarkerId('ahbap'),
  position: LatLng(41.075987, 29.017706),
  infoWindow: InfoWindow(title: 'Ahbap'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
  BitmapDescriptor.hueViolet,
  ),
  ),
  Marker(
  markerId: MarkerId('levent'),
  position: LatLng(41.079901, 29.020762),
  infoWindow: InfoWindow(title: 'TOG'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
  BitmapDescriptor.hueViolet,
  ),
  ),
   Marker(
  markerId: MarkerId('levent2'),
  position: LatLng(41.079448, 29.023811),
  infoWindow: InfoWindow(title: 'Haytap'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
  BitmapDescriptor.hueViolet,
  ),
  ),
 Marker(
  markerId: MarkerId('levent3'),
  position: LatLng(41.081551, 29.019645),
  infoWindow: InfoWindow(title: 'Kaçuv'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
  BitmapDescriptor.hueViolet,
  ),
  ),
];
}
*/
