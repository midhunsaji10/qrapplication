import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:qrapp/qrpage2.dart';
import 'package:http/http.dart' as http;
import 'package:qrapp/qrpage3.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController rollno = TextEditingController();
  TextEditingController password = TextEditingController();

  Future<void> login()async{
    Uri uri = Uri.parse('https://scnner-web.onrender.com/api/login');
    var response = await http.post(uri,
        headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8'
        },
        body: jsonEncode({'rollno':rollno.text,'password':password.text}));
    print(response.statusCode);
    print(response.body);
    var data=jsonDecode(response.body);
    print(data["message"]);
    if(response.statusCode == 200) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {return Qr();}));
    }else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('SOMETHING WENT WRONG')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          children: [
             SizedBox(
              height: 100,
            ),
             Text(
              'LOGIN',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
                color: Colors.white,
              ),
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
                  labelText: 'ENTER YOUR ROLL NUMBER',
                  labelStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(Icons.person, color: Colors.white)),
            )),
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
                      prefixIcon: Icon(Icons.key, color: Colors.white))),
            ),
             SizedBox(height: 30),
            ElevatedButton(
                style: ElevatedButton.styleFrom(),
                onPressed: () {login();},
                child:  Text('Login',
                    style: TextStyle(
                      color: Colors.white,
                    ))),
            Text("Don't have an account already??",
                style: TextStyle(color: Colors.white)),
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Page2();
                  }));
                },
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
