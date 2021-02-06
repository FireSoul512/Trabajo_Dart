import 'package:flutter/material.dart';

class Info_Developer extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 246, 239, 1),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 250,
                height: 250,
                child: Image.network(
                  "https://scontent.fmtt1-1.fna.fbcdn.net/v/t1.0-9/59188969_1526348547498976_4226429608049770496_o.jpg?_nc_cat=106&ccb=2&_nc_sid=09cbfe&_nc_ohc=ShBKievj-UkAX8Fcja2&_nc_ht=scontent.fmtt1-1.fna&oh=8a7acbe6012068c126ea02ca2b83140c&oe=6044C257",
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 50),
              Text( "Jorge Roberto Aguirre Liy" ),
              SizedBox(height: 50),
              RaisedButton(
                child: Text("Regresar"),
                color: Color.fromRGBO(42, 200, 194, 1),
                textColor: Colors.white,
                shape: StadiumBorder(),
                onPressed: (){
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
 
}