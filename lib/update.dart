import 'package:flutter/material.dart';

class ScreenUpdate extends StatefulWidget {
  const ScreenUpdate({super.key});

  @override
  State<ScreenUpdate> createState() => _ScreenUpdateState();
}

class _ScreenUpdateState extends State<ScreenUpdate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 5, 156, 113),
          title: Text("Update"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 55, 226, 8),
              radius: 50,
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/whatsapp.png'),
              ),
            ),
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 147, 16, 180),
              radius: 50,
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/whatsapp.png'),
              ),
            ),
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 173, 218, 10),
              radius: 50,
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/whatsapp.png'),
              ),
            ),
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 206, 14, 104),
              radius: 50,
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/whatsapp.png'),
              ),
            ),
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 236, 182, 4),
              radius: 50,
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/whatsapp.png'),
              ),
            ),
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 234, 38, 8),
              radius: 50,
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/whatsapp.png'),
              ),
            ),
          ]),
        ));
  }
}
