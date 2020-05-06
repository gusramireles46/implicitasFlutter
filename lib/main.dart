import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(Implicitas());

class Implicitas extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Implicitas'),
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 25,

              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
                child: ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      border: Border(right: BorderSide(width: 1.0)),
                      color: Colors.transparent,
                    ),
                    child: Icon(Icons.language, color: Colors.white, size: 30,),
                  ),
                  title: Text(
                    'Abrir URL', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.greenAccent,),
                      Text(
                        'https://itcelaya.edu.mx/', style: TextStyle(color: Colors.amberAccent, fontStyle: FontStyle.italic),
                      )
                    ],
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30,),
                  onTap: launchURL,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  void launchURL() async{
    const url = 'http://itcelaya.edu.mx/index.php?r=especialidades/view&id=7';
    if(await canLaunch(url)){
      await launch(url);
    } else {
      print("no se puede lanzar");
    }
  }
}