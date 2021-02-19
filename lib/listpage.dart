import 'package:flutter/widgets.dart';
import 'formpage.dart';
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
    void gotoFormPage(BuildContext context) {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => FormPage()),
      );
    }


    List titles = ["Açev", "Ahbap", "Ahtapot","Dem", 'Haytap','Kaçuv','Lösev',"Tema","TOG", "Tohum Otizm"];

    List images = ["assets/acev_logo2-1200x720.png",
      "assets/GEx4_aZx_400x400.jpg",
      "assets/ahtapot.jpg",
      "assets/dem.png",
      "assets/haytap.png",
      "assets/kaçuv.jpg",
      "assets/download.png",
      "assets/tema.jpg",
      "assets/tog.png",
      "assets/tohum.jpg",
    ];
    List subtitles = ["Educate and support children and their families.",
      "Help, develop projects for a better community.",
      'Help orphans, animals and homeless people for better future.',
      'Create a better society for deaf people.',
      "Provide shelter and food for animals.",
      "Support children and their families through treatment of cancer.",
      "Help and educate children with leukemia",
      "Protect nature from erosion and other natural disasters.",
      "Provide opportunities for young people to improve themselves and the community.",
      "Give health support and education to children with autism."
    ];

    List<Widget> title = new List<Widget>();
    return Scaffold (
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
            icon: Icon(FontAwesomeIcons.arrowLeft),
            onPressed: () {
            gotoHomePage(context);
        }),
        title: Text("Foundations", style: TextStyle(color: Colors.white),),
      ),
        body: Column(
          children: [
          Expanded(child: Container(
                height: 1000,
                padding: EdgeInsets.all(10.0),

                child: ListView.builder(
                  itemCount: titles.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {

                    return Card( shadowColor: Colors.grey[300],

                         child:  ListTile(
                          hoverColor: Colors.deepPurple[200],
                           onTap: () {
                             Navigator.push(
                               context,
                               MaterialPageRoute(
                                 builder: (context) => FormPage(),
                               ),
                             );
                           },
                          leading: CircleAvatar(
                          radius: 20.0,

                          backgroundImage: AssetImage(images[index]),
                        ),
                         title: Text(
                          titles[index],
                          style: TextStyle(fontSize: 20.0, color: Colors.deepPurple),
                        ),
                          subtitle: Text(subtitles[index], style: TextStyle(fontSize: 15.0, color: Colors.grey[800])),
                      ),
                      );

                  },
                ),
              ),),
            ]

        ),
        );


  }
}


