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
                title: Text('Memo Toscano',
                    style: TextStyle(color: Colors.grey[800])),
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'https://scontent.fgdl5-1.fna.fbcdn.net/v/t1.0-9/39980189_650125998720674_6011126542606794752_n.jpg?_nc_cat=103&_nc_sid=85a577&_nc_eui2=AeE5waReGauQd2xMgWVyz_O0xkYIAF0p0knGRggAXSnSSQwNg7EvDskqlQQD9qtNu5LAu-B3ZNJcQfuEFsZq--Yo&_nc_ohc=bCPFVDqKA8kAX-uOGgn&_nc_ht=scontent.fgdl5-1.fna&oh=0102ce5f701172410bd056f5c362d70d&oe=5F5F5C8C'),
                ),
                trailing: IconButton(icon: Icon(Icons.phone,color: Colors.teal), onPressed: (){
                  _makePhoneCall('3121811727');
                }),
              ),
              ListTile(
                title:
                    Text('Yesica', style: TextStyle(color: Colors.grey[800])),
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'),
                ),
                trailing: IconButton(icon: Icon(Icons.phone,color: Colors.teal), onPressed: (){
                  _makePhoneCall('');
                }),
              ),
              ListTile(
                title:
                    Text('Hannia', style: TextStyle(color: Colors.grey[800])),
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/4171211/pexels-photo-4171211.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                ),
                trailing: IconButton(icon: Icon(Icons.phone,color: Colors.teal), onPressed: (){
                  _makePhoneCall('');
                }),
              ),
              ListTile(
                title: Text('Jose Juan',
                    style: TextStyle(color: Colors.grey[800])),
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                ),
                trailing: IconButton(icon: Icon(Icons.phone,color: Colors.teal), onPressed: (){
                  _makePhoneCall('');
                }),
              ),
              ListTile(
                title: Text('Erick', style: TextStyle(color: Colors.grey[800])),
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/941693/pexels-photo-941693.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                ),
                trailing: IconButton(icon: Icon(Icons.phone,color: Colors.teal), onPressed: (){
                  _makePhoneCall('');
                }),
              ),
               ListTile(
                title: Text('Memo Toscano',
                    style: TextStyle(color: Colors.grey[800])),
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'https://scontent.fgdl5-1.fna.fbcdn.net/v/t1.0-9/39980189_650125998720674_6011126542606794752_n.jpg?_nc_cat=103&_nc_sid=85a577&_nc_eui2=AeE5waReGauQd2xMgWVyz_O0xkYIAF0p0knGRggAXSnSSQwNg7EvDskqlQQD9qtNu5LAu-B3ZNJcQfuEFsZq--Yo&_nc_ohc=bCPFVDqKA8kAX-uOGgn&_nc_ht=scontent.fgdl5-1.fna&oh=0102ce5f701172410bd056f5c362d70d&oe=5F5F5C8C'),
                ),
                trailing: IconButton(icon: Icon(Icons.phone,color: Colors.teal), onPressed: (){
                  _makePhoneCall('');
                }),
              ),
              ListTile(
                title:
                    Text('Yesica', style: TextStyle(color: Colors.grey[800])),
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'),
                ),
                trailing: IconButton(icon: Icon(Icons.phone,color: Colors.teal), onPressed: (){
                  _makePhoneCall('');
                }),
              ),
              ListTile(
                title:
                    Text('Hannia', style: TextStyle(color: Colors.grey[800])),
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/4171211/pexels-photo-4171211.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                ),
                trailing: IconButton(icon: Icon(Icons.phone,color: Colors.teal), onPressed: (){
                  _makePhoneCall('');
                }),
              ),
              ListTile(
                title: Text('Jose Juan',
                    style: TextStyle(color: Colors.grey[800])),
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                ),
                trailing: IconButton(icon: Icon(Icons.phone,color: Colors.teal), onPressed: (){
                  _makePhoneCall('');
                }),
              ),
              ListTile(
                title: Text('Erick', style: TextStyle(color: Colors.grey[800])),
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/941693/pexels-photo-941693.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                ),
                trailing: IconButton(icon: Icon(Icons.phone,color: Colors.teal), onPressed: (){
                  _makePhoneCall('');
                }),
              ),
            ],
          ),
        ));
  }
}
