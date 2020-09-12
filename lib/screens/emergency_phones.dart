import 'package:flutter/material.dart';
import 'package:la_app_de_memo_toscano/widgets/my_drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class EmergencyPhones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<void> _makePhoneCall(String url) async {
      if (await canLaunch('tel:' + url)) {
        await launch('tel:' + url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("Teléfonos de emergencia"),
        ),
        drawer: MyDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Text('Ambulancia',
                    style: TextStyle(color: Colors.grey[800])),
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/ambulancia.png'),
                ),
                trailing: IconButton(
                    icon: Icon(Icons.phone, color: Colors.teal),
                    onPressed: () {
                      _makePhoneCall('911');
                    }),
              ),
              ListTile(
                title: Text('Incendios',
                    style: TextStyle(color: Colors.grey[800])),
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/bombero.png'),
                ),
                trailing: IconButton(
                    icon: Icon(Icons.phone, color: Colors.teal),
                    onPressed: () {
                      _makePhoneCall('911');
                    }),
              ),
              ListTile(
                title:
                    Text('Policía', style: TextStyle(color: Colors.grey[800])),
                leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/guardia.png')),
                trailing: IconButton(
                    icon: Icon(Icons.phone, color: Colors.teal),
                    onPressed: () {
                      _makePhoneCall('911');
                    }),
              ),
              ListTile(
                title: Text('Fuga de agua',
                    style: TextStyle(color: Colors.grey[800])),
                leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/fuga.png')),
                trailing: IconButton(
                    icon: Icon(Icons.phone, color: Colors.teal),
                    onPressed: () {
                      _makePhoneCall('911');
                    }),
              ),
              ListTile(
                title: Text('Fuga de gas',
                    style: TextStyle(color: Colors.grey[800])),
                leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/fuga-de-gas.png')),
                trailing: IconButton(
                    icon: Icon(Icons.phone, color: Colors.teal),
                    onPressed: () {
                      _makePhoneCall('911');
                    }),
              )
            ],
          ),
        ));
  }
}
