import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:la_app_de_memo_toscano/screens/news-information.dart';
import 'package:la_app_de_memo_toscano/widgets/my_drawer.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Noticias"),
      ),
      body: StreamBuilder(
          stream: Firestore.instance.collection('news').snapshots(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) return Text('Loading...');
            return ListView.builder(
                itemCount: snapshot.data.documents.length,
                itemBuilder: (context, index) =>
                    _buildItems(context, snapshot.data.documents[index]));
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NewsInformation()));
            },
            child: Card(
              child: Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.network(
                        "${document['image']}",
                        height: size.width / 2.75,
                        width: size.width / 2.75,
                        fit: BoxFit.cover,
                      )),
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
                                "Fecha de publicación: ${document['date'].toDate().day}/${document['date'].toDate().month}/${document['date'].toDate().year}",
                                style: TextStyle(color: Colors.grey[700]),
                              )
                            ],
                          )))
                ],
              ),
            )));
  }
}
