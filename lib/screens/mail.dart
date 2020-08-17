import 'package:flutter/material.dart';
import 'package:la_app_de_memo_toscano/widgets/my_drawer.dart';

class Mail extends StatelessWidget {
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
                child: Image.network(
                    'https://scontent.fgdl5-1.fna.fbcdn.net/v/t1.0-9/117399378_1147041645695771_4314951515317065807_n.jpg?_nc_cat=109&_nc_sid=110474&_nc_eui2=AeGxkS_PjGPJwBCZ7yHZxvv2YDvVfzPmXmVgO9V_M-ZeZeRtTIixYor_1AVpvmm13naDMSe3Eyzjjj3M9Ffv3A3Z&_nc_ohc=-YW7YgIFRB0AX9va0w0&_nc_ht=scontent.fgdl5-1.fna&oh=0f9f264351ee80992aee7a990733dc71&oe=5F5F098E'),
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
                child: FlatButton(
                  onPressed: () {},
                  color: Colors.pink[800],
                  child: Text(
                    "Enviar correo",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
