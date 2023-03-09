import 'package:flutter/material.dart';
import '../work/New_Home.dart';
import 'Sign_Up.dart';

class Disconncete extends StatefulWidget {
  const Disconncete({Key? key}) : super(key: key);

  @override
  State<Disconncete> createState() => _DisconnceteState();
}

class _DisconnceteState extends State<Disconncete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        //leading: IconButton(
        //onPressed: () {
        //   Navigator.pop(context);
        // },
        // icon: Icon(
        // Icons.arrow_back_ios,
        // size: 20,
        // color: Colors.black,
        //)),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'Se connecter',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Login to your account',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[700],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        inputFile(label: "Email"),
                        inputFile(label: "Password", obscureText: true)
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
                      padding: EdgeInsets.only(top: 30, left: 3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border(
                              //bottom: BorderSide(color: Colors.black),
                              //top: BorderSide(color: Colors.black),
                              //left: BorderSide(color: Colors.black),
                              //right: BorderSide(color: Colors.black),
                              )),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => New_Home()));
                        },
                        color: Color(0xff023f80),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          'Se connecter',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("N'avez vous pas de compte ?"),
                      //Text("Sign Up", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18,),)
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Sign_Up()));
                        },
                        child: Text(
                          "S'inscrire",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Color(0xff023f80),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget inputFile({label, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black87),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
        ),
      )
    ],
  );
}
