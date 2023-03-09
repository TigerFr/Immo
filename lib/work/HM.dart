import 'package:flutter/material.dart';
import '../Register/Login.dart';
import '../Register/Sign_Up.dart';

class HOME extends StatelessWidget {
  const HOME({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "L'Univers de tous ce qui est immobiliers ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/pic/HM.JPG'),
              ),
              ),
            ),
            Column(
              children: [
                MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black26),
                      borderRadius: BorderRadius.circular(30)),
                  child: Text(
                    'Se connecter',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 20),
                MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Sign_Up()));
                    },
                    color: Color.fromARGB(255, 3, 69, 139),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "S'inscrire",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
