import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                  style: ElevatedButton.styleFrom(primary: Colors.teal),
                  onPressed: () {},
                  child: Text('Login',
                      style: TextStyle(
                        color: Colors.white,
                      ))),
              Text("Don't have an account already??",style: TextStyle(color: Colors.white)),
              TextButton(onPressed: () {}, child: Text('Register',style: TextStyle(color: Colors.white) ,))
            ],
          ),
        ),
      ),
    );
  }
}
