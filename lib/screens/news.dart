import 'package:flutter/material.dart';
import 'package:la_app_de_memo_toscano/screens/news-information.dart';
import 'package:la_app_de_memo_toscano/widgets/my_drawer.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size =  MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Noticias"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
           Container(
             margin:EdgeInsets.all(5),
             child:
           InkWell(
             onTap: (){
               Navigator.push(
                  context, MaterialPageRoute(builder: (context) => NewsInformation()));
             },
             child:
           Card(
             child: Row(
               children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network("https://images.pexels.com/photos/2405918/pexels-photo-2405918.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",height: size.width/2.75,width: size.width/2.75,fit:BoxFit.cover,)),
                    Flexible(
                      child:
                    Container(
                    margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                      child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Título Noticia 1",style: TextStyle(fontSize: 20,color:Colors.grey[700],fontWeight: FontWeight.bold),),
                        Text("Información corta de la noticia 1",style: TextStyle(color:Colors.grey[700]),)
                      ],)
                    ))
               ],
             ),
           ))),
            Container(
              margin:EdgeInsets.all(5),
              child:
            InkWell(
              child:
            Card(
             child: Row(
               children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network("https://images.pexels.com/photos/275496/pexels-photo-275496.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",height: size.width/2.75,width: size.width/2.75,fit:BoxFit.cover,)),
                    Flexible(
                      child:
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                      child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Título Noticia 2",style: TextStyle(fontSize: 20,color:Colors.grey[700],fontWeight: FontWeight.bold),),
                        Text("Información corta de la noticia 2",style: TextStyle(color:Colors.grey[700]),)
                      ],
                    )))
               ],
             ),
           ))),
            Container(
              margin:EdgeInsets.all(5),
              child:
            InkWell(
              child:
            Card(
             child: Row(
               children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network("https://images.pexels.com/photos/1928151/pexels-photo-1928151.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",height: size.width/2.75,width: size.width/2.75,fit:BoxFit.cover,)),
                    Flexible(
                      child:
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                      child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Título Noticia 3",style: TextStyle(fontSize: 20,color:Colors.grey[700],fontWeight: FontWeight.bold),),
                        Text("Información corta de la noticia 3",style: TextStyle(color:Colors.grey[700]),)
                      ],
                    )))
               ],
             ),
           ))),
            Container(
              margin:EdgeInsets.all(5),
              child:
            InkWell(
              child:
            Card(
             child: Row(
               children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network("https://images.pexels.com/photos/374870/pexels-photo-374870.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",height: size.width/2.75,width: size.width/2.75,fit:BoxFit.cover,)),
                    Flexible(
                      child:
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                      child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Título Noticia 4",style: TextStyle(fontSize: 20,color:Colors.grey[700],fontWeight: FontWeight.bold),),
                        Text("Información corta de la noticia 4",style: TextStyle(color:Colors.grey[700]),)
                      ],
                    )))
               ],
             ),
           ))),
            Container(
              margin:EdgeInsets.all(5),
              child:
            InkWell(
              child:
            Card(
             child: Row(
               children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network("https://images.pexels.com/photos/2388361/pexels-photo-2388361.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",height: size.width/2.75,width: size.width/2.75,fit:BoxFit.cover,)),
                    Flexible(
                      child:
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                      child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Título Noticia 5",style: TextStyle(fontSize: 20,color:Colors.grey[700],fontWeight: FontWeight.bold),),
                        Text("Información corta de la noticia 5",style: TextStyle(color:Colors.grey[700]),)
                      ],
                    )))
               ],
             ),
           )))
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
