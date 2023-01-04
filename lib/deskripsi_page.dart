import 'package:flutter/material.dart';
import 'package:resep_nenek/home_page.dart';

class Deskripsi extends StatefulWidget {
  const Deskripsi({super.key});

  @override
  State<Deskripsi> createState() => _DeskripsiState();
}

class _DeskripsiState extends State<Deskripsi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Resep",
            style: TextStyle(
                fontFamily: "Pacifico", fontSize: 25, color: Colors.white),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff0096ff), Color(0xff6610f2)],
                    begin: FractionalOffset.topLeft,
                    end: FractionalOffset.bottomRight)),
          )),
    );
  }
}
