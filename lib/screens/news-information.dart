import 'package:flutter/material.dart';

class NewsInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title:Text("Noticias")
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              'https://images.pexels.com/photos/2405918/pexels-photo-2405918.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
              height: size.width,
              width: size.width,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Text("Título Noticia 1",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold)),
            Container(
              margin: EdgeInsets.all(10),
              child: Text('Información completa de la noticia 1. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',style: TextStyle(color:Colors.grey[700],fontSize: 16),textAlign: TextAlign.justify,)),
              Container(
              margin: EdgeInsets.all(10),
              child: Text('Información completa de la noticia 1. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',style: TextStyle(color:Colors.grey[700],fontSize: 16),textAlign: TextAlign.justify,))
          ],
        ),
      ),
    );
  }
}
