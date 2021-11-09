import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/profile/profile.dart';
import 'package:flutter_auth/Screens/tambah/add.dart';
import 'package:flutter_auth/Screens/detail/note1.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "EKSKULKU",
        theme: new ThemeData(primaryColor: Colors.lightBlue, primarySwatch: Colors.blue, accentColor: Colors.lightBlue),
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text(
                "Dashboard ku",
                style: new TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              actions: <Widget>[
                InkWell(
                  child: IconButton(icon: new Icon(Icons.person, color: Colors.white)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => profile()));
                  },
                ),
              ],
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: Colors.white,
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => add()));
              },
              tooltip: 'Increment Counter',
              child: const Icon(Icons.add, color: Colors.black),
            ),
            body: new Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: GridView.count( 
                  crossAxisCount: 2,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(70.0),
                            ),
                            color: Colors.blueGrey),
                        child: Center(
                                      child: new InkWell(child: new Text('Paskibra', style: TextStyle (fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.yellowAccent) ), onTap: () => note1),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(60.0),
                            ),
                            color: Colors.blueGrey),
                        child: Center(
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => note1()));
                            },
                          
                            child: Text(
                              "Karate",
                              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.yellowAccent),
                            ),
                            ),
                          ),
                        
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(60.0),
                            ),
                            color: Colors.blueGrey),
                        child: Center(
                          child: Text(
                            "Merpati Putih ",
                            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.yellowAccent),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(60.0),
                            ),
                            color: Colors.blueGrey),
                        child: Center(
                          child: Text(
                            "KIR",
                            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.yellowAccent),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
