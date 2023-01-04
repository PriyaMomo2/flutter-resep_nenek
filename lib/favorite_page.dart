import 'package:flutter/material.dart';
import 'package:resep_nenek/home_page.dart';

class FaforitePage extends StatefulWidget {
  const FaforitePage({super.key});

  @override
  State<FaforitePage> createState() => _FaforitePageState();
}

class _FaforitePageState extends State<FaforitePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Resep Favorit",
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
