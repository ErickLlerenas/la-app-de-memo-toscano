import 'package:flutter/material.dart';
import 'package:la_app_de_memo_toscano/screens/administrator/new_gallery.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:la_app_de_memo_toscano/screens/gallery-information.dart';
import 'package:cached_network_image/cached_network_image.dart';

class GalleryAdministratorSports extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.pink[800],
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => NewGallery(type:'gallery_sports')));
            },
            child: Icon(Icons.add)),
        body: StreamBuilder(
            stream: Firestore.instance.collection('gallery_sports').snapshots(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData) return LinearProgressIndicator();
              int reverseIndex = snapshot.data.documents.length;
              return GridView.builder(
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                ),
                itemCount: snapshot.data.documents.length,
                itemBuilder: (context, index) {
                  reverseIndex -= 1;
                  return _buildItems(
                      context, snapshot.data.documents[reverseIndex]);
                });
            }));
  }
   Widget _buildItems(BuildContext context, DocumentSnapshot document) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Wrap(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          GalleryInformation(image: document['image'])));
            },
            onLongPress: () {
              _showDeleteDialog(context, document.documentID);
            },
            child: CachedNetworkImage(
              imageUrl: "${document['image']}",
              placeholder: (context, url) => LinearProgressIndicator(
                  backgroundColor: Colors.grey[50],
                  valueColor: AlwaysStoppedAnimation(Colors.grey[200])),
              height: size.width / 2,
              width: size.width / 2,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

   void _showDeleteDialog(context, document) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "¿Eliminar foto?",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.grey[700],
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
          content: Text("Esta foto será eliminada."),
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
                    .collection('gallery_sports')
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