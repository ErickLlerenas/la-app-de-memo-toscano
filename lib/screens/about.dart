import 'package:flutter/material.dart';
import 'package:la_app_de_memo_toscano/widgets/my_drawer.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: Text("Acerca de"),
        ),
        drawer: MyDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                'https://scontent.fgdl5-1.fna.fbcdn.net/v/t1.0-9/39980189_650125998720674_6011126542606794752_n.jpg?_nc_cat=103&_nc_sid=85a577&_nc_eui2=AeE5waReGauQd2xMgWVyz_O0xkYIAF0p0knGRggAXSnSSQwNg7EvDskqlQQD9qtNu5LAu-B3ZNJcQfuEFsZq--Yo&_nc_ohc=bCPFVDqKA8kAX-uOGgn&_nc_ht=scontent.fgdl5-1.fna&oh=0102ce5f701172410bd056f5c362d70d&oe=5F5F5C8C',
                height: size.width,
                width: size.width,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10),
              Text("Memo Toscano",style: TextStyle(color:Colors.grey[800],fontSize: 24,fontWeight: FontWeight.bold),),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                    "Soy Memo Toscano, un ciudadano comprometido con mi gente de Villa de Álvarez. Gracias por tu confianza no te voy a fallar!",style: TextStyle(color:Colors.grey[700],fontSize: 16),textAlign: TextAlign.justify,),
              )
            ],
          ),
        ));
  }
}
