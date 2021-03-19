import 'package:flutter/material.dart';

class Offers extends StatefulWidget {
  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("offers"), actions: [Text("data"),Text("ddddata")],),
      body: Container(
        child: Center(child: Text("asd")),
      ),
    );
  }
}
