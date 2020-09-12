import 'package:flutter/material.dart';
import 'package:la_app_de_memo_toscano/screens/administrator/new_event.dart';
import 'package:la_app_de_memo_toscano/widgets/my_drawer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:la_app_de_memo_toscano/screens/events-information.dart';

class EventsAdministrator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Administrador")),
        drawer: MyDrawer(),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.pink[800],
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => NewEvent()));
            },
            child: Icon(Icons.add)),
        body: StreamBuilder(
            stream: Firestore.instance.collection('events').snapshots(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData) return LinearProgressIndicator();
              int reverseIndex = snapshot.data.documents.length;
              return ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (context, index) {
                  reverseIndex -=1;
                  return _buildItems(context, snapshot.data.documents[reverseIndex]);
                });
            }));
  }

  Widget _buildItems(BuildContext context, DocumentSnapshot document) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.all(5),
        child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EventsInformation(
                          image: document['image'],
                          date: document['date'],
                          description: document['description'],
                          title: document['title'])));
            },
            onLongPress: () {
              _showDeleteDialog(context, document.documentID);
            },
            child: Card(
              child: Row(
                children: [
                  Flexible(
                      child: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${document['title']}",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.grey[700],
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Fecha del evento: ${document['date'].toDate().day}/${document['date'].toDate().month}/${document['date'].toDate().year}",
                                style: TextStyle(color: Colors.grey[700]),
                              ),
                            ],
                          ))),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.network(
                        "${document['image']}",
                        height: size.width / 2.75,
                        width: size.width / 2.75,
                        fit: BoxFit.cover,
                      )),
                ],
              ),
            )));
  }
   void _showDeleteDialog(context, document) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "¿Eliminar evento?",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.grey[700],
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
          content: Text("Este evento será eliminado y no podrás recuperarlo."),
          actions: <Widget>[
            FlatButton(
              color: Colors.red,
              child: Text(
                "Eliminar",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Firestore.instance
                    .collection('events')
                    .document(document)
                    .delete()
                    .then((value) => {});
              },
            ),
            FlatButton(
              color: Colors.grey,
              child: Text(
                "Cancelar",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
   }
}
