import 'package:flutter/material.dart';
import 'package:trabajo2/src/pages/first_page.dart';

class List_Page extends StatelessWidget{
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
        title: Text("Lista de usuarios"),
      ),
      body: UserList(),
    );
  }
}


class UserList extends StatefulWidget {
  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  List users;

  @override
  void initState() {
    users = [
      'Jorge',
      'Roberto',
      'Valeria',
      'Alejandro',
      'Vianisa',
      'Claudio',
      'Emily',
      'Daniela',
      'Mario',
      'Erika',
      'Romeo',
      'Alejandra',
      'Alberto',
      'Gabriel',
      'Jose',
      'David',
      'Pamela',
      'Luis',
      'Jhon',
      'Hanzo',
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index){
        int numero = index + 1;
        return ListTile(
          title: Text(users[index]),
          leading: Text("$numero"),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => First_Page(users[index]),
            ));

          },
        );
      },
      itemCount: users.length,
    );
  }
}