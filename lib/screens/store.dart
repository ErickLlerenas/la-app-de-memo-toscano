import 'package:flutter/material.dart';
import 'package:la_app_de_memo_toscano/widgets/my_drawer.dart';

class Store extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("Tienda del pueblo"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                color: Colors.grey[100],
                child: ListTile(
                  title:
                      Text('Maíz', style: TextStyle(color: Colors.grey[800])),
                  leading: Text(
                    '1)',
                    style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                  ),
                )),
            Container(
                child: ListTile(
              title: Text('Frijol', style: TextStyle(color: Colors.grey[800])),
              leading: Text(
                '2)',
                style: TextStyle(fontSize: 18, color: Colors.grey[700]),
              ),
            )),
            Container(
                color: Colors.grey[100],
                child: ListTile(
                  title:
                      Text('Arroz', style: TextStyle(color: Colors.grey[800])),
                  leading: Text(
                    '3)',
                    style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                  ),
                )),
            Container(
                child: ListTile(
              title: Text('Azúcar', style: TextStyle(color: Colors.grey[800])),
              leading: Text(
                '4)',
                style: TextStyle(fontSize: 18, color: Colors.grey[700]),
              ),
            )),
            Container(
                color: Colors.grey[100],
                child: ListTile(
                  title: Text('Harina de maíz enriquecida',
                      style: TextStyle(color: Colors.grey[800])),
                  leading: Text(
                    '5)',
                    style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                  ),
                )),
            Container(
                child: ListTile(
              title: Text('Aceite vegetal comestible',
                  style: TextStyle(color: Colors.grey[800])),
              leading: Text(
                '6)',
                style: TextStyle(fontSize: 18, color: Colors.grey[700]),
              ),
            )),
            Container(
                color: Colors.grey[100],
                child: ListTile(
                  title:
                      Text('Atún', style: TextStyle(color: Colors.grey[800])),
                  leading: Text(
                    '7)',
                    style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                  ),
                )),
            Container(
                child: ListTile(
              title: Text('Sardina', style: TextStyle(color: Colors.grey[800])),
              leading: Text(
                '8)',
                style: TextStyle(fontSize: 18, color: Colors.grey[700]),
              ),
            )),
            Container(
              color: Colors.grey[100],
              child: ListTile(
                title: Text('Leche fluida, en polvo y derivado de la leche',
                    style: TextStyle(color: Colors.grey[800])),
                leading: Text(
                  '9)',
                  style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                ),
              ),
            ),
            Container(
                child: ListTile(
              title: Text('Chiles envasados',
                  style: TextStyle(color: Colors.grey[800])),
              leading: Text(
                '10)',
                style: TextStyle(fontSize: 18, color: Colors.grey[700]),
              ),
            )),
            Container(
              color: Colors.grey[100],
              child: ListTile(
                title: Text('Café soluble (con y sin azúcar)',
                    style: TextStyle(color: Colors.grey[800])),
                leading: Text(
                  '11)',
                  style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                ),
              ),
            ),
            Container(
                child: ListTile(
              title: Text('Sal de mesa',
                  style: TextStyle(color: Colors.grey[800])),
              leading: Text(
                '12)',
                style: TextStyle(fontSize: 18, color: Colors.grey[700]),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
