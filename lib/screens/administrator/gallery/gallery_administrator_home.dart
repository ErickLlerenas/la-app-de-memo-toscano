import 'package:flutter/material.dart';
import 'package:la_app_de_memo_toscano/screens/administrator/gallery/gallery_administrator.dart';
import 'package:la_app_de_memo_toscano/screens/administrator/gallery/gallery_administrator_legislative.dart';
import 'package:la_app_de_memo_toscano/screens/administrator/gallery/gallery_administrator_sports.dart';
import 'package:la_app_de_memo_toscano/widgets/my_drawer.dart';

class GalleryAdministratorHome extends StatefulWidget {
  @override
  _GalleryAdministratorHomeState createState() => _GalleryAdministratorHomeState();
}

class _GalleryAdministratorHomeState extends State<GalleryAdministratorHome> {
  TabController _controller;

  List<Widget> list = [
    Tab(icon: Icon(Icons.work),text: 'Legislativo'),
    Tab(icon: Icon(Icons.supervised_user_circle),text: 'Social'),
    Tab(icon: Icon(Icons.verified_user),text: 'Deportivo')
  ]; 

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
          length: 3,
          child: Scaffold(
          appBar: AppBar(title: Text("Administrador"),
          bottom: TabBar(
              controller: _controller,
              tabs: list,
            ),
          ),
          drawer: MyDrawer(),
          body: TabBarView(
            controller: _controller,
            children: [
              GalleryAdministratorLegislative(),
              GalleryAdministrator(),
              GalleryAdministratorSports()
            ],
          )),
    );
  }
}
