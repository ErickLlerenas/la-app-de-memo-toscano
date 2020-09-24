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
              Image.asset(
                'assets/memo_toscano.jpg',
                height: size.width,
                width: size.width,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10),
              Text("Memo Toscano",style: TextStyle(color:Colors.grey[800],fontSize: 24,fontWeight: FontWeight.bold),),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                    "Soy Memo Toscano, un ciudadano comprometido con mi gente de Villa de Álvarez. ¡Gracias por tu confianza no te voy a fallar!",style: TextStyle(color:Colors.grey[700],fontSize: 16),textAlign: TextAlign.justify,),
              )
            ],
          ),
        ));
  }
}
