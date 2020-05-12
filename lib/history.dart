import 'package:flutter/material.dart';
import 'package:falasyam/home.dart';
import 'package:falasyam/work.dart';
import 'package:timeline/timeline.dart';
import 'package:timeline/model/timeline_model.dart';

class History extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    final List<TimelineModel> list = [
      TimelineModel(
        id: "1",
        title: "2001",
        description: "Lahir Ke Dunia"
      ),
      TimelineModel(
        id: "2",
        title: "2007",
        description: "Masuk SDN 1 Kedung Leper"
      ),
      TimelineModel(
        id: "3",
        title: "2013",
        description: "Lulus SDN 1 Kedung Leper"
      ),
      TimelineModel(
        id: "4",
        title: "2013",
        description: "Masuk SMP N 1 Mlonggo"
      ),
      TimelineModel(
        id: "5",
        title: "2016",
        description: "Lulus SMP N 1 Mlonggo"
      ),
      TimelineModel(
        id: "6",
        title: "2016",
        description: "Masuk SMK N 1 Bangsri"
      ),
      TimelineModel(
        id: "7",
        title: "2019",
        description: "Lulus SMK N 1 Bangsri"
      ),
      TimelineModel(
        id: "8",
        title: "2019 - Sekarang",
        description: "Freelacer"
      ),
    ];

    return new Scaffold(
      bottomNavigationBar: BottomAppBar(
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
      body: Container(
        child: 
          TimelineComponent(
              timelineList: list, 
          ),
      )
    );
  }
}