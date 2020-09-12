import 'package:flutter/material.dart';
import 'package:la_app_de_memo_toscano/screens/administrator/events_administrator.dart';
import 'package:la_app_de_memo_toscano/screens/administrator/gallery_administrator.dart';
import 'package:la_app_de_memo_toscano/screens/administrator/news_administrator.dart';

class AdministratorHome extends StatefulWidget{
  @override
  _AdministratorHomeState createState() => _AdministratorHomeState();
}

class _AdministratorHomeState extends State<AdministratorHome> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    NewsAdministrator(),
    EventsAdministrator(),
    GalleryAdministrator()
  ];
    void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text('Noticias'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            title: Text('Eventos'),
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.photo),
            title: Text('Galería'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pink[800],
        onTap: _onItemTapped,
    ));
  }
}