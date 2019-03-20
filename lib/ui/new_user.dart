import 'package:flutter/material.dart';

class New_User extends StatefulWidget {
  @override
  _New_UserState createState() => _New_UserState();
}

class _New_UserState extends State<New_User> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("New User Reg"),
        backgroundColor: Colors.red,
      ),
      body: new Column(
        children: <Widget>[
          SizedBox(
            height: 50.0,
            width: 40.0,
          ),
          new Card(
            margin: const EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 0.0),
            elevation: 1.0,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                new Align(
                  alignment: Alignment.center,
                  child: new Padding(
                      padding: new EdgeInsets.fromLTRB(10.0, 60.0, 1.0, 2.0),
                      child: TextField(
                        cursorColor: Colors.brown,
                        decoration: InputDecoration(
                            labelText: "",
                            hintText: "FullName",
                            prefixIcon: Icon(Icons.person_pin),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(25.0)))),
                      ),
                  ),
                ),
              ],
            ),
          ),
          new Card(
            margin: const EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 0.0),
            elevation: 1.0,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                new Align(
                  alignment: Alignment.center,
                  child: new Padding(
                    padding: new EdgeInsets.fromLTRB(10.0, 60.0, 1.0, 2.0),
                    child: TextField(
                      cursorColor: Colors.brown,
                      decoration: InputDecoration(
                          labelText: "",
                          hintText: "UserName",
                          prefixIcon: Icon(Icons.perm_contact_calendar),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(25.0)))),
                    ),
                  ),
                ),
              ],
            ),
          ),
          new Card(
            margin: const EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 0.0),
            elevation: 1.0,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                new Align(
                  alignment: Alignment.center,
                  child: new Padding(
                    padding: new EdgeInsets.fromLTRB(10.0, 60.0, 1.0, 2.0),
                    child: TextField(
                      cursorColor: Colors.brown,
                      decoration: InputDecoration(
                          labelText: "",
                          hintText: "Email Address",
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(25.0)))),
                    ),
                  ),
                ),
              ],
            ),
          ),
          new Card(
            margin: const EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 0.0),
            elevation: 1.0,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                new Align(
                  alignment: Alignment.center,
                  child: new Padding(
                    padding: new EdgeInsets.fromLTRB(10.0, 60.0, 1.0, 2.0),
                    child: TextField(
                      cursorColor: Colors.brown,
                      decoration: InputDecoration(
                          labelText: "",
                          hintText: "Phone Number",
                          prefixIcon: Icon(Icons.phone),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(25.0)))),
                    ),
                  ),
                ),
              ],
            ),
          ),
          new Card(
            margin: const EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 0.0),
            elevation: 1.0,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                new Align(
                  alignment: Alignment.center,
                  child: new Padding(
                    padding: new EdgeInsets.fromLTRB(10.0, 60.0, 1.0, 2.0),
                    child: TextField(
                      cursorColor: Colors.brown,
                      decoration: InputDecoration(
                          labelText: "",
                          hintText: "Website",
                          prefixIcon: Icon(Icons.link),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(25.0)))),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          )
        ],
      ),
    );
  }
}
