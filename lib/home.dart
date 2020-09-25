import 'package:flutter/material.dart';

//created by deepakkumar
class homeui extends StatefulWidget {
  homeui({Key key}) : super(key: key);

  @override
  _homeuiState createState() => _homeuiState();
}

class _homeuiState extends State<homeui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text("this is home page")),
      ),
    );
  }
}
