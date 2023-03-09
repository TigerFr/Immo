import 'package:flutter/material.dart';
import '../work/New_Home.dart';
import 'Login.dart';

class Sign_Up extends StatefulWidget {
  const Sign_Up({Key? key}) : super(key: key);

  @override
  State<Sign_Up> createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "S'inscrire",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Creer gratuitement votre Compte",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  inputFile(label: "Username"),
                  inputFile(label: "Email"),
                  inputFile(label: "Password", obscureText: true),
                  inputFile(label: "Confirm Password", obscureText: true)
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 30, left: 3),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>New_Home()));
                  },
                  color: Color(0xff023f80),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "S'inscrire",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("avez vous un compte ?"),
                  //Text("Sign Up", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18,),)
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                    },
                    child: Text(
                      "Se connecter", style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Color(0xff023f80),
                    ),
                    ),),
                ],
              ),
            ],
          ),
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
