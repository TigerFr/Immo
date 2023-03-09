import 'package:flutter/material.dart';
import 'image_detail.dart';

class Picture extends StatefulWidget {
  const Picture({Key? key}) : super(key: key);

  @override
  State<Picture> createState() => _PictureState();
}

class _PictureState extends State<Picture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      elevation: 0.1,
      centerTitle: true,
      title: Text(
        'SMART IMMO',
        style: TextStyle(color: Colors.white),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ))
      ],
      backgroundColor: Color(0xff023f80),
    ),
      body: HomePage(),
    );
  }
}
