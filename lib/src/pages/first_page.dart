import 'package:flutter/material.dart';

class First_Page extends StatelessWidget{
  final String user;

  First_Page(this.user);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 246, 239, 1),
      appBar: AppBar(
        leading: RaisedButton(
          color: Color.fromRGBO(249, 94, 100, 1),
          child: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Color.fromRGBO(240, 94, 100, 1),
        title: Text("Usuario"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "$user",
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }

}