import 'package:flutter/material.dart';
import 'package:la_app_de_memo_toscano/widgets/my_drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class Directory extends StatelessWidget {
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
        appBar: AppBar(title: Text("Directorio")),
        drawer: MyDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Text('Atención ciudadana',
                    style: TextStyle(color: Colors.grey[800])),
                    subtitle: Text('Lic. Andrés Tellechea'),
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/atencion-al-cliente.png'),
                ),
                trailing: IconButton(icon: Icon(Icons.phone,color: Colors.teal), onPressed: (){
                  _makePhoneCall('3121711981');
                }),
              ),
              ListTile(
                title:
                    Text('Jurídico ', style: TextStyle(color: Colors.grey[800])),
                    subtitle: Text('Lic. Erick Zamora'),
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/subasta.png'),
                ),
                trailing: IconButton(icon: Icon(Icons.phone,color: Colors.teal), onPressed: (){
                  _makePhoneCall('3121935923');
                }),
              ),
              ListTile(
                title:
                    Text('Coordinador deportivo', style: TextStyle(color: Colors.grey[800])),
                    subtitle: Text('Jorge Ávalos Cárdenas'),
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/deportista.png'),
                ),
                trailing: IconButton(icon: Icon(Icons.phone,color: Colors.teal), onPressed: (){
                  _makePhoneCall('3121518225');
                }),
              ),
              ListTile(
                title: Text('Comunicación social',
                    style: TextStyle(color: Colors.grey[800])),
                    subtitle: Text('Eutimio Ramos'),
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/asistencia-social.png'),
                ),
                trailing: IconButton(icon: Icon(Icons.phone,color: Colors.teal), onPressed: (){
                  _makePhoneCall('3121339738');
                }),
              ),
              ListTile(
                title: Text('Coordinador territorial',
                    style: TextStyle(color: Colors.grey[800])),
                    subtitle: Text('Salvador Vázquez'),
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/mapa.png'),
                ),
                trailing: IconButton(icon: Icon(Icons.phone,color: Colors.teal), onPressed: (){
                  _makePhoneCall('3121695605');
                }),
              )
            ],
          ),
        ));
  }
}
