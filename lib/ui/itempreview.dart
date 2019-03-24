import 'dart:io';
import 'package:flutter/material.dart';
import 'package:three_app/ui/background2.dart';
import 'package:image_picker/image_picker.dart';

class ItemPreview extends StatefulWidget {

  final String name;
  final String userName;
  final String userEmail;
  final String phone;
  final String website;

  ItemPreview({Key key, this.name,this.userName,this.userEmail,this.website,this.phone}) : super (key:key);

  @override
  _ItemPreviewState createState() => _ItemPreviewState();
}

class _ItemPreviewState extends State<ItemPreview> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  File _image;

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    var _scrollController = new ScrollController();
    double valueMoves = 40.0;

    final body2 = new Scaffold(
      appBar: new AppBar(
        title: new Text("Profile: ${widget.userName}", style: new TextStyle(
          color: Colors.white,
        ),),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomPadding: true,
        body: new SafeArea(
            child:CustomScrollView(
              scrollDirection: Axis.vertical,
              slivers: <Widget>[
                SliverList(
                    delegate: SliverChildListDelegate([
                      Stack(
                        alignment: Alignment.topCenter,
                        children: <Widget>[
                          new SafeArea(
                            child: new Container(
                              height:_height,
                              width: _width,
                              decoration: new BoxDecoration(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          new SafeArea(
                            child: new Container(
                              height:_height/4,
                              width: _width,
                              decoration: new BoxDecoration(
                                image: DecorationImage(
                                  image: new ExactAssetImage(
                                      'lib/images/7.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Column(
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
                                          child: new Text(
                                            '${widget.name}',
                                            style: new TextStyle(color: Colors.deepOrange, fontSize: 20.0, fontWeight: FontWeight.bold),
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              new Card(
                                  margin: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0.0),
                                  elevation: 1.0,
                                  color: Colors.white,
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        alignment: Alignment.centerRight,
                                        child: IconButton(
                                          padding: EdgeInsets.all(0.0),
                                          onPressed: null,
                                          icon: Icon(Icons.person_pin),
                                        ),
                                      ),
                                      Align(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            new Align(
                                              alignment: Alignment.centerLeft,
                                              child: new Padding(
                                                  padding: new EdgeInsets.fromLTRB(5.0, 15.0, 1.0, 2.0),
                                                  child: new Text(
                                                    '${widget.userName}',
                                                    style: new TextStyle(color: Colors.teal, fontSize: 15.0,wordSpacing: 2.0),
                                                  )),
                                            ),
                                            new Align(
                                              alignment: Alignment.centerLeft,
                                              child: new Padding(
                                                  padding: new EdgeInsets.fromLTRB(5.0, 1.0, 1.0, 10.0),
                                                  child: new Text(
                                                    '',
                                                    style: new TextStyle(color: Colors.teal, fontSize: 9.0,wordSpacing: 2.0),
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                              ),
                              new Card(
                                  margin: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0.0),
                                  elevation: 1.0,
                                  color: Colors.white,
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        alignment: Alignment.centerRight,
                                        child: IconButton(
                                          padding: EdgeInsets.all(0.0),
                                          onPressed: null,
                                          icon: Icon(Icons.email),
                                        ),
                                      ),
                                      Align(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            new Align(
                                              alignment: Alignment.centerLeft,
                                              child: new Padding(
                                                  padding: new EdgeInsets.fromLTRB(5.0, 15.0, 1.0, 2.0),
                                                  child: new Text(
                                                    '${widget.userEmail}',
                                                    style: new TextStyle(color: Colors.teal, fontSize: 15.0,wordSpacing: 2.0),
                                                  )),
                                            ),
                                            new Align(
                                              alignment: Alignment.centerLeft,
                                              child: new Padding(
                                                  padding: new EdgeInsets.fromLTRB(5.0, 1.0, 1.0, 10.0),
                                                  child: new Text(
                                                    '',
                                                    style: new TextStyle(color: Colors.teal, fontSize: 9.0,wordSpacing: 2.0),
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                              ),
                              new Card(
                                  margin: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0.0),
                                  elevation: 1.0,
                                  color: Colors.white,
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        alignment: Alignment.centerRight,
                                        child: IconButton(
                                          padding: EdgeInsets.all(0.0),
                                          onPressed: null,
                                          icon: Icon(Icons.phone),
                                        ),
                                      ),
                                      Align(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            new Align(
                                              alignment: Alignment.centerLeft,
                                              child: new Padding(
                                                  padding: new EdgeInsets.fromLTRB(5.0, 15.0, 1.0, 2.0),
                                                  child: new Text(
                                                    '${widget.phone}',
                                                    style: new TextStyle(color: Colors.teal, fontSize: 15.0,wordSpacing: 2.0),
                                                  )),
                                            ),
                                            new Align(
                                              alignment: Alignment.centerLeft,
                                              child: new Padding(
                                                  padding: new EdgeInsets.fromLTRB(5.0, 1.0, 1.0, 10.0),
                                                  child: new Text(
                                                    '',
                                                    style: new TextStyle(color: Colors.teal, fontSize: 9.0,wordSpacing: 2.0),
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                              ),
                              new Card(
                                  margin: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0.0),
                                  elevation: 1.0,
                                  color: Colors.white,
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        alignment: Alignment.centerRight,
                                        child: IconButton(
                                          padding: EdgeInsets.all(0.0),
                                          onPressed: null,
                                          icon: Icon(Icons.link),
                                        ),
                                      ),
                                      Align(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            new Align(
                                              alignment: Alignment.centerLeft,
                                              child: new Padding(
                                                  padding: new EdgeInsets.fromLTRB(5.0, 15.0, 1.0, 2.0),
                                                  child: new Text(
                                                    '${widget.website}',
                                                    style: new TextStyle(color: Colors.teal, fontSize: 15.0,wordSpacing: 2.0),
                                                  )),
                                            ),
                                            new Align(
                                              alignment: Alignment.centerLeft,
                                              child: new Padding(
                                                  padding: new EdgeInsets.fromLTRB(5.0, 1.0, 1.0, 10.0),
                                                  child: new Text(
                                                    '',
                                                    style: new TextStyle(color: Colors.teal, fontSize: 9.0,wordSpacing: 2.0),
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                              ),

                              SizedBox(
                                height: 20.0,
                              )
                            ],
                          ),

                          Container(
                              margin: EdgeInsets.only(top: 40.0),
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    new BoxShadow(
                                        color: Colors.black.withAlpha(90),
                                        offset: const Offset(3.0, 10.0),
                                        blurRadius: 10.0)
                                  ],
                                  border: new Border.all(color: Colors.white, width: 3.0),
                                  color: Colors.teal
                              ),
                              child: InkWell(
                                child: Center(
                                  child:_image == null
                                      ? new Text('S')
                                      : new CircleAvatar(backgroundImage: new FileImage(_image), radius: 200.0,),
                                ),
                                onTap: (){
                                  getImage();
                                },
                              )
                          ),
                        ],
                      ),
                    ])
                ),
              ],
            )
        )
    );


    return Container(
      decoration: new BoxDecoration(
        color: Colors.red,
      ),
      child: new Stack(
        children: <Widget>[
          new CustomPaint(
            size: new Size(_width, _height),
            painter: new Background2(),
          ),
          body2,
        ],
      ),
    );
  }

  void _displaySnackBar(BuildContext context) {
    final snackBar = SnackBar(content: Text('Picture Saved'),action: SnackBarAction(
        label: "UNDO",
        onPressed: () {
        }));
    _scaffoldKey.currentState.showSnackBar(snackBar);

    // Navigator.pop(context);
  }

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }
}
