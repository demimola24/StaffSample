import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:three_app/model/usermodel.dart';
import 'package:three_app/ui/background2.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:three_app/ui/itempreview.dart';
import 'package:three_app/ui/new_user.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  TextEditingController editingController = new TextEditingController();
  List _data;


//  @override
//  Widget build(BuildContext context) {
//    final _width = MediaQuery.of(context).size.width;
//    final _height = MediaQuery.of(context).size.height;
//
//    final body2 = new Scaffold(
//        appBar: new AppBar(
//          elevation: 0.0,
//          title: Container(
//            margin: EdgeInsets.fromLTRB(8.0, 8.0, 1.0, 8.0),
//            child: TextField(
//              controller: editingController,
//              cursorColor: Colors.brown,
//              style: TextStyle(
//                  color: Colors.brown
//              ),
//              decoration: InputDecoration(
//                  hintText: "Search for Users",
//                  contentPadding: const EdgeInsets.symmetric(vertical: 6.0),
//                  fillColor: Colors.white,
//                  filled: true,
//                  prefixIcon: Icon(Icons.search),
//                  border: OutlineInputBorder(
//                      borderRadius: BorderRadius.all(Radius.circular(25.0)))),
//              onChanged: (value) {
//
//              },
//            ),
//          ),
//        ),
//        backgroundColor: Colors.transparent,
//        body: new CustomScrollView(
//          scrollDirection: Axis.vertical,
//          slivers: <Widget>[
//            SliverList(
//                delegate: SliverChildBuilderDelegate((context,i){
//                  return Column(
//                    children: <Widget>[
//                      new FutureBuilder<List<UserModel>>(
//                          future: fetchUsers(),
//                          builder: (context, snapshot) {
//                            if (snapshot.hasData) {
//                              return new ListView.builder(
//                                  itemCount: snapshot.data.length,
//                                  itemBuilder: (context, index) {
//                                    return new Column(
//                                        crossAxisAlignment: CrossAxisAlignment.start,
//                                        children: <Widget>[
//                                          new Text(snapshot.data[index].name,
//                                              style: new TextStyle(fontWeight: FontWeight.bold)),
//                                          new Divider()
//                                        ]
//                                    );
//                                  }
//                              );
//                            }
//                          }
//                      ),
////                      GridView.count(
////                        physics: NeverScrollableScrollPhysics(),
////                        shrinkWrap: true,
////                        crossAxisCount: 2,
////                        controller: ScrollController(keepScrollOffset: false),
////                        children: List.generate(_data.length, (index) {
////                          EdgeInsets padding = index == 0?const EdgeInsets.only(
////                              left: 7.0, right: 7.0, top: 4.0, bottom: 30.0):const EdgeInsets.only(
////                              left: 7.0, right: 7.0, top: 4.0, bottom: 30.0);
////                          return new Padding(
////                            padding: padding,
////                            child: new InkWell(
////                              onTap: () {
////                                //'${AdGroupsPics[i][index]}'),
////
////                                //Navigator.push(context, MaterialPageRoute(builder: (context) => new ItemPreview(name: "${AdGroupsStyles[i][index]}",style: "${AdGroupsNames[i][index]}",imageUrl: imageUrl,)));
////                                print('Card 2 selected');
////                              },
////                              child: new Container(
////                                decoration: new BoxDecoration(
////                                  borderRadius: new BorderRadius.circular(15.0),
////                                  color: Colors.black,
////                                  boxShadow: [
////                                    new BoxShadow(
////                                        color: Colors.black.withAlpha(80),
////                                        offset: const Offset(3.0, 10.0),
////                                        blurRadius: 15.0)
////                                  ],
////                                  image: new DecorationImage(
////                                    image: new ExactAssetImage(
////                                        'lib/images/image_place.jpg'),
////                                    fit: BoxFit.fitHeight,
////                                  ),
////                                ),
////                                width: 220.0,
////                                child: new Stack(
////                                  children: <Widget>[
////                                    new Align(
////                                        alignment: Alignment.bottomCenter,
////                                        child: Opacity(
////                                          opacity: 0.8,
////                                          child: new Container(
////                                              decoration: new BoxDecoration(
////                                                  color: Colors.deepOrange,
////                                                  borderRadius: new BorderRadius.only(
////                                                      bottomLeft: new Radius.circular(10.0),
////                                                      bottomRight: new Radius.circular(10.0))),
////                                              height: 33.0,
////                                              width: 220.0,
////                                              child: new Column(
////                                                mainAxisAlignment: MainAxisAlignment.center,
////                                                children: <Widget>[
////                                                  Padding(
////                                                    padding: const EdgeInsets.all(1.0),
////                                                    child: new Text(
////                                                      '${_data[index]["name"]}',
////                                                      style: new TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.bold),
////                                                    ),
////                                                  ),
////                                                  Padding(
////                                                    padding: const EdgeInsets.all(1.0),
////                                                    child: new Text(
////                                                      '${_data[index]["username"]}',
////                                                      style: new TextStyle(color: Colors.white,fontSize: 9.0),
////                                                    ),
////                                                  ),
////                                                ],
////                                              )),
////                                        )
////                                    ),
////                                  ],
////                                ),
////                              ),
////                            ),
////                          );
////                        }),
////                      ),
//                    ],
//                  );
//                },
//                  childCount: 2,
//                )
//            ),
//          ],
//        )
//    );
//
//    return new Container(
//      decoration: new BoxDecoration(
//        color: Colors.red,
//      ),
//      child: new Stack(
//        children: <Widget>[
//          new CustomPaint(
//            size: new Size(_width, _height),
//            painter: new Background2(),
//          ),
//          body2,
//        ],
//      ),
//    );
//  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'My User App',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: Container(
            margin: EdgeInsets.fromLTRB(8.0, 8.0, 1.0, 8.0),
            child: TextField(
              controller: editingController,
              cursorColor: Colors.brown,
              style: TextStyle(
                  color: Colors.brown
              ),
              decoration: InputDecoration(
                  hintText: "Search for Users",
                  contentPadding: const EdgeInsets.symmetric(vertical: 6.0),
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              onChanged: (value) {

              },
            ),
          ),
        ),
        body: new Container(
          child: new FutureBuilder<List<UserModel>>(
            future: fetchUsers(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return new ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return new Padding(
                        padding: EdgeInsets.all(7.0),
                        child: new InkWell(
                          onTap: () {
                            //'${AdGroupsPics[i][index]}'),
                            Navigator.push(context, MaterialPageRoute(builder: (context) => new ItemPreview(name: "${snapshot.data[index].name}",userName: "${snapshot.data[index].username}",userEmail: "${snapshot.data[index].email}",website: "${snapshot.data[index].website}",phone: "${snapshot.data[index].phone}",)));
                            print('Card 2 selected');
                          },
                          child: new Container(
                            height: 150.0,
                            decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(15.0),
                              color: Colors.black,
                              boxShadow: [
                                new BoxShadow(
                                    color: Colors.black.withAlpha(80),
                                    offset: const Offset(3.0, 10.0),
                                    blurRadius: 15.0)
                              ],
                              image: new DecorationImage(
                                image: new ExactAssetImage(
                                    'lib/images/image_place.jpg'),
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            width: 220.0,
                            child: new Stack(
                              children: <Widget>[
                                new Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Opacity(
                                      opacity: 0.8,
                                      child: new Container(
                                          decoration: new BoxDecoration(
                                              color: Colors.deepOrange,
                                              borderRadius: new BorderRadius.only(
                                                  bottomLeft: new Radius.circular(10.0),
                                                  bottomRight: new Radius.circular(10.0))),
                                          height: 33.0,
                                          width: 350.0,
                                          child: new Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.all(1.0),
                                                child: new Text(
                                                  '${snapshot.data[index].name}',
                                                  style: new TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.bold),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(1.0),
                                                child: new Text(
                                                  '${snapshot.data[index].email}',
                                                  style: new TextStyle(color: Colors.white,fontSize: 9.0),
                                                ),
                                              ),
                                            ],
                                          )),
                                    )
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
//                      return new Column(
//                          crossAxisAlignment: CrossAxisAlignment.start,
//                          children: <Widget>[
//                            new Text(snapshot.data[index].name,
//                                style: new TextStyle(
//                                    fontWeight: FontWeight.bold)),
//                            new Divider()
//                          ]
//                      );
                    }
                );
              } else if (snapshot.hasError) {
                return new Text("${snapshot.error}");
              }

              // By default, show a loading spinner
              return new CircularProgressIndicator();
            },
          ),
        ),
        floatingActionButton: new FloatingActionButton(
            tooltip: "Add User",
            backgroundColor: Colors.white,
            child: new ListTile(
                title: new Icon(Icons.add,color: Colors.brown,)
            ),
            onPressed:(){
              Navigator.of(context).push(new MaterialPageRoute(builder:
              (BuildContext context) => new New_User()));
            }
        ),
      ),
    );
  }

  Future<List<UserModel>> fetchUsers() async {
    final response = await http.get(
        'https://jsonplaceholder.typicode.com/users');
    print(response.body);
    List responseJson = json.decode(response.body.toString());
    List<UserModel> userList = createUserList(responseJson);
    return userList;
  }

  List<UserModel> createUserList(List data) {
    List<UserModel> list = new List();
    for (int i = 0; i < data.length; i++) {
      String name = data[i]["name"];
      int id = data[i]["id"];
      String username = data[i]["username"];
      String email = data[i]["email"];
      String phone = data[i]["phone"];
      String website = data[i]["website"];
      UserModel user = new UserModel(
          id: id, name: name,username: username,email: email,phone: phone,website: website);
      list.add(user);
      list.add(user);
    }
    return list;
  }

}
