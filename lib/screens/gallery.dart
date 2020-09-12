import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:la_app_de_memo_toscano/screens/gallery-information.dart';
import 'package:la_app_de_memo_toscano/widgets/my_drawer.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Galería"),
      ),
      body: StreamBuilder(
          stream: Firestore.instance.collection('gallery').snapshots(),
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
          }),
      drawer: MyDrawer(),
    );
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
}
