import 'package:flutter/material.dart';
import 'package:falasyam/history.dart';
import 'package:falasyam/work.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatelessWidget{

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
            content: Text('Made with ❤\nBy FalaSyam\n\nEmail : info@falasyam.com')
          ) 
        );
      }, child: Icon(Icons.info_outline),),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 23,
              ),
              Text('Fala Syam', style: TextStyle(fontFamily: 'SourceCodePro', fontWeight: FontWeight.w700), ),
              SizedBox(
                height: 30,
              ),
              Image(image: AssetImage('assets/images/ic_me.png')),
              SizedBox(
                height: 20,
              ),
              Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Text('About Me', textAlign: TextAlign.start, style: TextStyle( fontWeight: FontWeight.bold),),
                          ),
                          ListTile(
                            title: Text('Name'),
                            subtitle: Text('Fala Syam Fitrakhul Akbar'),
                          ),
                          ListTile(
                            title: Text('Birth'),
                            subtitle: Text('6 January 2001'),
                          ),
                          ListTile(
                            title: Text('City'),
                            subtitle: Text('Jepara'),
                          ),
                          ListTile(
                            title: Text('Country'),
                            subtitle: Text('Indonesia'),
                          ),
                        ],
                      )
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}