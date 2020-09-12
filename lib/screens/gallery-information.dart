import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class GalleryInformation extends StatelessWidget {
  final String image;
  GalleryInformation({@required this.image});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Galería")),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
              imageUrl: "${this.image}",
              placeholder: (context, url) => LinearProgressIndicator(
                  backgroundColor: Colors.grey[50],
                  valueColor: AlwaysStoppedAnimation(Colors.grey[200])),
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
