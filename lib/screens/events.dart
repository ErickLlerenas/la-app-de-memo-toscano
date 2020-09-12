import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:la_app_de_memo_toscano/screens/events-information.dart';
import 'package:la_app_de_memo_toscano/widgets/my_drawer.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Events extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Eventos"),
      ),
      body: StreamBuilder(
          stream: Firestore.instance.collection('events').snapshots(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) return LinearProgressIndicator();
            int reverseIndex = snapshot.data.documents.length;
            return ListView.builder(
                itemCount: snapshot.data.documents.length,
                itemBuilder: (context, index) {
                  reverseIndex -= 1;
                  return _buildItems(
                      context, snapshot.data.documents[reverseIndex]);
                });
          }),
      drawer: MyDrawer(),
    );
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
              print('¿Eliminar?');
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
                      child: CachedNetworkImage(
                        imageUrl: "${document['image']}",
                        placeholder: (context, url) => LinearProgressIndicator(
                            backgroundColor: Colors.grey[50],
                            valueColor:
                                AlwaysStoppedAnimation(Colors.grey[200])),
                        height: size.width / 2.75,
                        width: size.width / 2.75,
                        fit: BoxFit.cover,
                      )),
                ],
              ),
            )));
  }
}
