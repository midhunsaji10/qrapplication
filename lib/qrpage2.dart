import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:qrapp/qrpage3.dart';
import 'package:http/http.dart' as http;

import 'login.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  TextEditingController name = TextEditingController();
  TextEditingController rollno = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  void register() async {
    Uri uri = Uri.parse('https://scnner-web.onrender.com/api/register');
    var response = await http.post(uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
        body: jsonEncode({
          'name': name.text,
          'email': email.text,
          'rollno': rollno.text,
          'password': password.text,
        }));print(response.statusCode);
        print(response.body);
        var data=jsonDecode(response.body);
        print(data["message"]);
    if(response.statusCode == 200) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {return Loginscreen();}));
    }else{
    ScaffoldMessenger.of( context).showSnackBar(SnackBar(content: Text('SOMETHING WENT WRONG')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          centerTitle: true,
          title: Text('REGISTRATION'),
        ),
        backgroundColor: Colors.teal,
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  child: TextField(
                      controller: name,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        labelText: 'ENTER YOUR NAME',
                        labelStyle: TextStyle(color: Colors.white),
                      ))),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                  child: TextField(
                      controller: rollno,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        labelText: 'ENTER YOUR ROLL NO ',
                        labelStyle: TextStyle(color: Colors.white),
                      ))),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                  child: TextField(
                      controller: email,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        labelText: 'ENTER YOUR E-MAIL',
                        labelStyle: TextStyle(color: Colors.white),
                      ))),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                  child: TextField(
                      controller: password,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        labelText: 'ENTER PASSWORD',
                        labelStyle: TextStyle(color: Colors.white),
                      ))),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(),
                  onPressed: () {register();
                    // print(name.text);
                    // print(rollno.text);
                    // print(email.text);
                    // print(password
                    //     .text); //{Navigator.push(context, MaterialPageRoute(builder: (context) {return Qr();}));}
                  },
                  child: Text('Register',
                      style: TextStyle(
                        color: Colors.white,
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
