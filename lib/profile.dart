import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            CircleAvatar(
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjYO7sLAggHDJsncjg1kKT0X8-pyFfloXAkPLovf9ILQ&s'),
              radius: 60,
            ),
            Text('PANDA',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                )),
            Text(
              'FLUTTER DEVEPLOPER',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(decoration:BoxDecoration(color: Colors.white,shape: BoxShape.rectangle,),alignment:AlignmentDirectional.center,
              child: Row(
                children: [
                  Icon(Icons.phone,color: Colors.teal),
                  Text('+91 7902287966',
                    style: TextStyle(color: Colors.teal),),
                ],
              ),
              height: 50,
              width: 300,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(decoration:BoxDecoration(color: Colors.white,shape: BoxShape.rectangle,),alignment:AlignmentDirectional.center,
              child: Row(
              children: [
                Icon(Icons.mail,color: Colors.teal),
                Text('eva2023@gmail.com',
                style: TextStyle(color: Colors.teal),),
              ],
              ),
              height: 50,
              width: 300,
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
