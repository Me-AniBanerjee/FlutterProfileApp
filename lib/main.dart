import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Assignment',
        theme: ThemeData(
          // This is the theme of your application.
          primarySwatch: Colors.blue,
        ),
        home: MyHomepage(title: 'Assignment'));
  }
}

class MyHomepage extends StatelessWidget {
  MyHomepage({Key? key, this.title = "A"}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Aniruddha Banerjee Profile")),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Basic(
              name: "Aniruddha Banerjee",
              email: "meanibanerjee@gmail.com",
              phone: "9518643245",
              namehead: "Name",
              emailhead: "Email",
              phonehead: "Phone"),
          Education(
              ten: "                           10",
              tenname: "             St.Augustine's Day School",
              twelve: "                         12",
              twelvename: "             Modern English Academy",
              graduation: "                          B.Tech CSE",
              graduationname: "               Lovely Professional University",
              educationhead: "Education",
              instituehead: "Institute"),
          Projects(
              project1: "            Simple Calculator",
              tech1: "HTML, CSS, JavaScript",
              project2: "           Tip Calculator",
              tech2: "HTML,CSS, JavaScript",
              project3: "            Card Generator",
              tech3: "HTML,CSS, JavaScript",
              project4: "Sales Calculator",
              tech4: "Python",
              projecthead: "     B.Tech Projects",
              technolgyusedhead: "Technology used"),
          Hobbies(
              //hobbeyhead: "Hobbies",
              hobbey: "                                  Hobbies",
              hobbeyname:
                  "                         Travelling, Music, Watching and \n                          playing football etc."),
        ],
      ),
    );
  }
}

class Basic extends StatelessWidget {
  Basic(
      {Key? key,
      this.name = "A",
      this.email = "A",
      this.phone = "A",
      this.namehead = "A",
      this.emailhead = "A",
      this.phonehead = "A"})
      : super(key: key);
  final String name;
  final String email;
  final String phone;
  final String namehead;
  final String emailhead;
  final String phonehead;

  Widget build(BuildContext context) {
    return Container(
      height: 120, //height:500
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("assets/images/17_11zon.jpg"),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            this.namehead,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(this.name)
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            this.emailhead,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(this.email)
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            this.phonehead,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(this.phone)
                        ]) //,
                    //Text(this.name),
                    //Text(this.email),
                    //Text(this.phone)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Education extends StatelessWidget {
  Education(
      {Key? key,
      this.ten = "A",
      this.tenname = "A",
      this.twelve = "A",
      this.twelvename = "A",
      this.graduation = "A",
      this.graduationname = "A",
      this.educationhead = "A",
      this.instituehead = "A"})
      : super(key: key);
  final String ten;
  final String tenname;
  final String twelve;
  final String twelvename;
  final String graduation;
  final String graduationname;
  final String educationhead;
  final String instituehead;

  Widget build(BuildContext context) {
    return Container(
      height: 150, //height:500
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    this.educationhead,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(this.instituehead,
                      style: TextStyle(fontWeight: FontWeight.bold))
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[Text(this.ten), Text(this.tenname)]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[Text(this.twelve), Text(this.twelvename)]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(this.graduation),
                  Text(this.graduationname)
                ])
          ]),
    );
  }
}

class Projects extends StatelessWidget {
  Projects(
      {Key? key,
      this.project1 = 'A',
      this.tech1 = "A",
      this.project2 = "A",
      this.tech2 = "A",
      this.project3 = "A",
      this.tech3 = "A",
      this.project4 = "A",
      this.tech4 = "A",
      this.projecthead = "A",
      this.technolgyusedhead = "A"})
      : super(key: key);
  final String project1;
  final String tech1;
  final String project2;
  final String tech2;
  final String project3;
  final String tech3;
  final String project4;
  final String tech4;
  final String projecthead;
  final String technolgyusedhead;

  Widget build(BuildContext context) {
    return Container(
      height: 150, //height:500
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    this.projecthead,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(this.technolgyusedhead,
                      style: TextStyle(fontWeight: FontWeight.bold))
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[Text(this.project1), Text(this.tech1)]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[Text(this.project2), Text(this.tech2)]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[Text(this.project3), Text(this.tech3)]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[Text(this.project4), Text(this.tech4)])
          ]),
    );
  }
}

class Hobbies extends StatelessWidget {
  Hobbies(
      {Key? key,
      this.hobbey = "A",
      this.hobbeyname = "A",
      this.hobbeyhead = "A"})
      : super(key: key);
  final String hobbey;
  final String hobbeyname;
  final String hobbeyhead;

  Widget build(BuildContext context) {
    return Container(
        height: 150, //height:500
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              /*Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(this.hobbeyhead,
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ]),*/
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(this.hobbey,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(this.hobbeyname)
                  ])
            ]));
  }
}
