import 'dart:async';
import 'package:flutter/material.dart';

class add extends StatefulWidget {
  _addState createState() => new _addState();
}

class _addState extends State<add> {
  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "EKSKULKU",
      theme: new ThemeData(primaryColor: Colors.lightBlue, primarySwatch: Colors.blue, accentColor: Colors.lightBlue),
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(
            "Daftar Ekskul",
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
        body: Form(
          key: _formKey,
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                // TextField(),
                TextFormField(
                  decoration: new InputDecoration(
                      labelText: "Nama",
                    border: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0)),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Nama tidak boleh kosong';
                    }
                    return null;
                  },
                ),

                TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Ekskul Yang Dipilih",
                    border: OutlineInputBorder(borderRadius: new BorderRadius.circular(10.0)),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'data harus diisi';
                    }
                    return null;
                  },
                ),

                TextFormField(
                  decoration: new InputDecoration(
                                       labelText: "Alasan Masuk ekskul",
                    border: OutlineInputBorder(borderRadius: new BorderRadius.circular(10.0)),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'data tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                Divider(),
                Container(
                  width: 130,
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
                      "Simpan",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
