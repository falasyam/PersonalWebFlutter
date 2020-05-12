import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:falasyam/history.dart';
import 'package:falasyam/home.dart';

class Work extends StatelessWidget{

  @override
  Widget build(BuildContext context) {


    return new Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        shape: CircularNotchedRectangle(),
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(icon: Icon(Icons.menu), onPressed: (){
                showModalBottomSheet<void>(
                  context: context, 
                  builder: (BuildContext context){
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.home),
                          title: Text('Home'),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.history),
                          title: Text('Perjalanan'),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => History()));
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.work),
                          title: Text('Project'),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Work()));
                          },
                        )
                      ],
                    );
                  }
                );
              }, 
            )
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(elevation: 0, onPressed: (){
          showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: Text('About Web', textAlign: TextAlign.center,),
            content: Text('Made with ❤\nBy FalaSyam')
          ) 
        );
      }, child: Icon(Icons.info_outline),),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.chat),
                  title: Text('iChat (Discontinued)', style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text('Messaging App use Firebase.'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Card(
                elevation: 2,
                child: InkWell(
                  onTap: (){ launch('https://drive.google.com/drive/folders/1_iq4h6ojccgdoCzbJgMlojdF0PuwdPgp');},
                    child: ListTile(
                      leading: Icon(Icons.note_add),
                      title: Text('Potato Kernel (Discontinued)', style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text('Kernel For Redmi 5A'),
                    ),
                )
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Card(
                elevation: 2,
                child: InkWell(
                  onTap: (){ launch('https://github.com/falasyam/Notes');},
                    child: ListTile(
                      leading: Icon(Icons.note_add),
                      title: Text('Notes', style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text('Notes App Android'),
                    ),
                )
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Card(
                elevation: 2,
                child: InkWell(
                  onTap: (){ launch('https://github.com/falasyam/FlutterNotes');},
                    child: ListTile(
                      leading: Icon(Icons.note_add),
                      title: Text('Flutter Notes', style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text('Made with Flutter'),
                    ),
                )
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Card(
                elevation: 2,
                child: InkWell(
                  onTap: (){ launch('https://github.com/falasyam/PersonalWebFlutter');},
                    child: ListTile(
                      leading: Icon(Icons.note_add),
                      title: Text('Personal Web Flutter', style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text('Made with Flutter'),
                    ),
                )
              ),
            ),
          ],
        ),
      )
    );
  }
}