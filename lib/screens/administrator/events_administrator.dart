import 'package:flutter/material.dart';
import 'package:la_app_de_memo_toscano/screens/administrator/new_event.dart';
import 'package:la_app_de_memo_toscano/widgets/my_drawer.dart';

class EventsAdministrator extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Administrador")),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink[800],
        onPressed: (){
          Navigator.push(
                    context, MaterialPageRoute(builder: (context) => NewEvent()));
      },
      child: Icon(Icons.add))
    );
  }
}