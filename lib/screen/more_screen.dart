import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("profile"),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child: CircleAvatar(
                    radius: 80.0,
                    backgroundImage: AssetImage("images/testImg.png"),
                  ),
                ),
                Container(
                  child: Text("wlrn566"),
                )
              ],
            ),
          ),
        ));
  }
}
