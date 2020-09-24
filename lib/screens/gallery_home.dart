import 'package:flutter/material.dart';
import 'package:la_app_de_memo_toscano/screens/gallery/legislative.dart';
import 'package:la_app_de_memo_toscano/screens/gallery/social.dart';
import 'package:la_app_de_memo_toscano/screens/gallery/sports.dart';

class GalleryHome extends StatefulWidget{
  @override
  _GalleryHomeState createState() => _GalleryHomeState();
}

class _GalleryHomeState extends State<GalleryHome> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Legislative(),
    Social(),
    Sports()
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
            icon: Icon(Icons.work),
            title: Text('Legislativo'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            title: Text('Social'),
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.verified_user),
            title: Text('Deportivo'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pink[800],
        onTap: _onItemTapped,
    ));
  }
}