import 'package:flutter/material.dart';
import 'package:trabajo2/src/pages/info_developer.dart';
import 'package:trabajo2/src/pages/list_page.dart';
import 'package:toast/toast.dart';


class NewPage extends StatelessWidget {
  String user = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 246, 239, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(240, 94, 100, 1),
        title: Text("AppRest"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                onChanged: (text){
                  user = text;
                },
                decoration: InputDecoration(
                  labelText: 'Usuario',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                onChanged: (text){
                  password = text;
                },
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),
              RaisedButton(
                color: Color.fromRGBO(42, 200, 194, 1),
                textColor: Colors.white,
                shape: StadiumBorder(),
                child: Text( "Acceder",
                  style: TextStyle(
                    fontSize: 20.0
                  ),
                ),

                onPressed: (){
                  if (password == "" && user == ""){
                    Toast.show("Los campos estan vacios", context, duration: Toast.LENGTH_LONG, gravity:  Toast.CENTER);
                  } else if(password == user){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => List_Page()
                    ));
                  } else {
                    Toast.show("El usuario y la contraseña no coinsiden", context, duration: Toast.LENGTH_LONG, gravity:  Toast.CENTER);
                  }
                },
              )
            ],
          ),
        ),
        
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromRGBO(249, 246, 239, 1),
        child: RaisedButton(
          color: Color.fromRGBO(42, 200, 194, 1),
          textColor: Colors.white,
          shape: StadiumBorder(),
          child: Text("Info"),
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Info_Developer(),
            ));
          },
        ),
      ),
    );
  }
}