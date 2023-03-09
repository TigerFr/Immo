import 'dart:ui';
import 'package:flutter/material.dart';
import '../work/categorie/Picture.dart';

class detail extends StatefulWidget {
  final prod_detail_name;
  final prod_detail_picture;
  final prod_detail_old_price;
  final prod_detail_price;
  final pro_details;

  detail(
      {this.prod_detail_name,
      this.prod_detail_picture,
      this.prod_detail_price,
      this.prod_detail_old_price,
      this.pro_details});

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
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
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.prod_detail_picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.prod_detail_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "\$${widget.prod_detail_old_price}",
                          style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "\$${widget.prod_detail_price}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff023f80)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Picture()));
                    },
                    color: Color(0xff023f80),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Voir la galerie",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )),
              )
            ],
          ),
          Divider(
            color: Color(0xff023f80),
          ),
          ListTile(
            title: Text("Details"),
            subtitle: Text(
              widget.pro_details,
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
