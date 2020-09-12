import 'package:flutter/material.dart';
import 'package:la_app_de_memo_toscano/widgets/my_drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class Mail extends StatelessWidget {
  final Uri _emailLaunchUri =
      Uri(scheme: 'mailto', path: 'memotoscanooficial@hotmail.com');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Buzón del pueblo")),
      drawer: MyDrawer(),
      body: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset('assets/icon.jpg'),
              ),
              SizedBox(height: 30),
              Text(
                "Contáctame",
                style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              SizedBox(height: 30),
              ButtonTheme(
                height: 50,
                minWidth: double.infinity,
                child: FlatButton.icon(
                  onPressed: () {
                    launch(_emailLaunchUri.toString());
                  },
                  color: Colors.pink[800],
                  label: Text(
                    "Enviar correo",
                    style: TextStyle(color: Colors.white),
                  ),
                  icon: Icon(Icons.send, color: Colors.white),
                ),
              )
            ],
          )),
    );
  }
}
