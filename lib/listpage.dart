import 'homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    void gotoHomePage(BuildContext context) {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    }


    List titles = ['Lösev', 'Kaçuv', 'Haytap', "Açev", "Ahbap", "TOG"];

    List images = [
      "assets/download.png",
      "assets/kaçuv.jpg",
      "assets/haytap.png",
      "assets/acev_logo2-1200x720.png",
      "assets/GEx4_aZx_400x400.jpg",
      "assets/tog.png",
    ];
    List subtitles = [
      "Help and educate children with leukemia",
      "Support children and their families through treatment of cancer.",
      "Provide shelter and food for animals.",
      "Educate and support children and their families.",
      "Help, develop projects for a better community.",
      "Provide opportunities for young people to improve themselves and the community."
    ];

    List<Widget> title = new List<Widget>();
    return Scaffold (
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(FontAwesomeIcons.arrowLeft),
            onPressed: () {
            gotoHomePage(context);
        }),
        title: Text("Foundations", style: TextStyle(color: Colors.white),),
      ),
        body: Column(
          children: [
          Container(
            height: 500,
             child: ListView.builder(
           itemCount: titles.length,
             itemBuilder: (context, index) {
               return Card(
                  child: ListTile(
                leading: CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage(images[index]),
                ),
                title: Text(
                  titles[index],
                  style: TextStyle(fontSize: 20.0, color: Colors.deepPurple),
                ),
                subtitle: Text(subtitles[index], style: TextStyle(fontSize: 15.0)),
              ),
            );
          },
        ),
       ),
          ],
        )
    );

  }
}
