import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

import 'GetImageForGallery.dart';
import 'TakePictureScreen.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title, this.camera}) : super(key: key);

  final String title;
  final CameraDescription camera;

  @override
  MainPageState createState() => MainPageState(camera);
}

class MainPageState extends State<MainPage> {
  CameraDescription camera;

  MainPageState(this.camera);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('사진 찍기', style: TextStyle(fontSize: 24)),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TakePictureScreen(camera: camera),
                  ),
                ),
              },
            ),
            RaisedButton(
              child: Text('갤러리 보기', style: TextStyle(fontSize: 24)),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoadImageFromGallery(),
                  ),
                ),
              },
            ),
          ],
        ),
      ),
    );
  }
}


