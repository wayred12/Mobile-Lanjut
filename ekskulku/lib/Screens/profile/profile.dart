import 'dart:async';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  _profileState createState() => new _profileState();
}

class _profileState extends State<profile> {
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "EKSKULKU",
        theme: new ThemeData(primaryColor: Colors.lightBlue, primarySwatch: Colors.blue, accentColor: Colors.lightBlue),
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text(
              "PROFILE",
              style: new TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
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
          body: Container(
            color: Colors.white,
            width: double.infinity,
            height: double.infinity,
            // Batas Alas

            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        image: DecorationImage(
                          image: AssetImage('assets/images/user.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 0.2, bottom: 8.0),
                      child: Align(alignment: Alignment.centerLeft, child: new Text("Nama : Fadel", style: TextStyle(color: Colors.black))),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 0.2, bottom: 8.0),
                      child: Align(alignment: Alignment.centerLeft, child: new Text("Tanggal Lahir : 1992-08-11", style: TextStyle(color: Colors.black))),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 0.2, bottom: 8.0),
                      child: Align(alignment: Alignment.centerLeft, child: new Text("Jenis Kelamin : Laki Laki", style: TextStyle(color: Colors.black))),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 0.2, bottom: 8.0),
                      child: Align(alignment: Alignment.centerLeft, child: new Text("Kelas : 10", style: TextStyle(color: Colors.black))),
                    ),
                  ],
                ),

                //edit button
                Container(
                  width: 340,
                  height: 45,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Edit",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                //edit product display
              ],
            ),
          ),
        ));
  }
}
