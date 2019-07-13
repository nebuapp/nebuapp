import 'package:flutter/material.dart';

void main() => runApp(NebuApp());

class NebuApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NebuAppState();
  }
}

class NebuAppState extends State<NebuApp> {
  var thingToWrite = 'Oyuna Başlanıyor';

  @override
  build(context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Nebu App', style: TextStyle(color: Colors.black54,fontSize: 33)),
            centerTitle: true,
            backgroundColor: Colors.lightGreen,
          ),
          backgroundColor: Colors.green,
          body: Column(
            children: <Widget>[
              Container(
                child: Text(
                  'Menu Items',
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
                margin: EdgeInsets.all(10.0),
                alignment: Alignment.center,
              ),
              RaisedButton(
                child: Text('Oyuna Başla', style: TextStyle(fontSize: 20)),
                color: Colors.deepPurpleAccent,
                onPressed: () {
                  thingToWrite = 'Oyuna Başlanıyor';
                  print(thingToWrite);
                  setState(() {});
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              RaisedButton(
                child: Text('Ayarlar', style: TextStyle(fontSize: 20)),
                color: Colors.deepOrange,
                onPressed: () {
                  thingToWrite = 'Kurcalama dedik ya';
                  print(thingToWrite);
                  setState(() {});
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              RaisedButton(
                child: Text('Hakkımızda', style: TextStyle(fontSize: 20)),
                color: Colors.lightBlueAccent,
                onPressed: () {
                  thingToWrite = 'Yoğuz';
                  print(thingToWrite);
                  setState(() {});
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              Container(
                child: Text(
                  thingToWrite,
                  style: TextStyle(color: Colors.amber, fontSize: 20),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          )),
    );
  }
}
