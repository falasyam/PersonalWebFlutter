import 'package:flutter/material.dart';
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
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          width: double.maxFinite,
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.chat),
                  title: Text('iChat'),
                  subtitle: Text('Discontinued'),
                ),
                ListTile(
                  leading: Icon(Icons.note),
                  title: Text('Notes App'),
                  subtitle: Text('You Can See Source Code in My Github'),
                )
              ],
            ),
          ),
        ), 
      ),
    );
  }
}