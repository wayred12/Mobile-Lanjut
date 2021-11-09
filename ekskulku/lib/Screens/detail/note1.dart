import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/tambah/add.dart';

class note1 extends StatefulWidget {
  _note1State createState() => new _note1State();
}

class _note1State extends State<note1> {
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "EKSKULKU",
        theme: new ThemeData(primaryColor: Colors.lightBlue, primarySwatch: Colors.blue, accentColor: Colors.lightBlue),
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text(
              "Karate",
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
                      padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 0.2, bottom: 8.0),
                      child: Align(alignment: Alignment.centerLeft, child: new Text("Pembina : Ridho Fadli", style: TextStyle(color: Colors.black))),
                    ),
                     Container(
                      padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 0.2, bottom: 8.0),
                      child: Align(alignment: Alignment.centerLeft, child: new Text("Ketua : Armand Safnata", style: TextStyle(color: Colors.black))),
                    ),
                     Container(
                      padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 0.2, bottom: 8.0),
                      child: Align(alignment: Alignment.centerLeft, child: new Text("Jumlah Anggota : 14", style: TextStyle(color: Colors.black))),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 0.2, bottom: 8.0),
                      child: Align(alignment: Alignment.centerLeft, child: new Text("Jadwal Latihan : Kamis dan Sabtu", style: TextStyle(color: Colors.black))),
                    ),
                  ],
                ),

                //edit button
                Divider(),
                Container(
                  width: 130,
                  height: 45,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    
                    onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return add();
                    },
                  ),
                );
              },

                    child: Text(
                      "Gabung/Join",
                      style: TextStyle(
                        color: Colors.yellow,
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
