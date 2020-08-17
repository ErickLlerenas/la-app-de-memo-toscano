import 'package:flutter/material.dart';
import 'package:la_app_de_memo_toscano/widgets/my_drawer.dart';

class EmergencyPhones extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teléfonos de emergencia"),
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Text('Cruz Roja',
                    style: TextStyle(color: Colors.grey[800])),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://i0.wp.com/lopezdoriga.com/wp-content/uploads/2016/04/cruz-roja.png?resize=980%2C550&ssl=1'),
                ),
                trailing: Icon(Icons.phone, color: Colors.teal),
                onTap: () {},
              ),
              ListTile(
                title:
                    Text('Bomberos', style: TextStyle(color: Colors.grey[800])),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://www.elsoldemexico.com.mx/incoming/asxsze-bomberos_cdmx.jpg/ALTERNATES/LANDSCAPE_400/Bomberos_cdmx.jpg'),
                ),
                trailing: Icon(Icons.phone, color: Colors.teal),
                onTap: () {},
              ),
              ListTile(
                title:
                    Text('Polocía federal', style: TextStyle(color: Colors.grey[800])),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/commons/8/8d/Mexico_Federal_Police_Shield.png'),
                ),
                trailing: Icon(Icons.phone, color: Colors.teal),
                onTap: () {},
              ),
              ListTile(
                title: Text('Fuga de Gas',
                    style: TextStyle(color: Colors.grey[800])),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://static.vix.com/es/sites/default/files/styles/4x3/public/imj/hogartotal/q/que-hacer-ante-una-fuga-de-gas-1.jpg'),
                ),
                trailing: Icon(Icons.phone, color: Colors.teal),
                onTap: () {},
              ),
              ListTile(
                title: Text('Fuga de agua', style: TextStyle(color: Colors.grey[800])),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://www.netjet.es/wp-content/uploads/2018/09/bigstock-Old-Leaking-Pipe-25153142.jpg'),
                ),
                trailing: Icon(Icons.phone, color: Colors.teal),
                onTap: () {},
              )
            ],
          ),
        ));
  }
}