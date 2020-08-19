import 'package:flutter/material.dart';
import 'package:la_app_de_memo_toscano/screens/about.dart';
import 'package:la_app_de_memo_toscano/screens/administrator/administrator.dart';
import 'package:la_app_de_memo_toscano/screens/directory.dart';
import 'package:la_app_de_memo_toscano/screens/emergency_phones.dart';
import 'package:la_app_de_memo_toscano/screens/events.dart';
import 'package:la_app_de_memo_toscano/screens/mail.dart';
import 'package:la_app_de_memo_toscano/screens/news.dart';
import 'package:la_app_de_memo_toscano/screens/store.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background.jpg"),
                fit: BoxFit.cover
              ),
              color: Colors.blue
            ),
          ),
          ListTile(
            title: Text('Noticias'),
            trailing: Icon(Icons.navigate_next),
            leading: Icon(Icons.notifications),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => News()));
            },
          ),
          ListTile(
            title: Text('Eventos'),
            trailing: Icon(Icons.navigate_next),
            leading: Icon(Icons.event),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Events()));
            },
          ),
          ListTile(
            title: Text('Directorio'),
            trailing: Icon(Icons.navigate_next),
            leading: Icon(Icons.contact_phone),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Directory()));
            },
          ),
          ListTile(
            title: Text('Teléfonos de emergencia'),
            trailing: Icon(Icons.navigate_next),
            leading: Icon(Icons.phone_in_talk),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => EmergencyPhones()));
            },
          ),
          ListTile(
            title: Text('Buzón del pueblo'),
            trailing: Icon(Icons.navigate_next),
            leading: Icon(Icons.mail),
            onTap: () {
              Navigator.pop(context);
               Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Mail()));
            },
          ),
          ListTile(
            title: Text('Tienda del pueblo'),
            trailing: Icon(Icons.navigate_next),
            leading: Icon(Icons.local_mall),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Store()));
            },
          ),
          ListTile(
            title: Text('Acerca de'),
            trailing: Icon(Icons.navigate_next),
            leading: Icon(Icons.info),
            onTap: () {
              Navigator.pop(context);
               Navigator.push(
                  context, MaterialPageRoute(builder: (context) => About()));
            },
          ),
          ListTile(
            title: Text('Administrador'),
            trailing: Icon(Icons.navigate_next),
            leading: Icon(Icons.settings),
            onTap: () {
              Navigator.pop(context);
               Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Administrator()));
            },
          ),
        ],
      ),
    );
  }
}
