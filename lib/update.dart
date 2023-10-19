import 'package:flutter/material.dart';

class ScreenUpdate extends StatefulWidget {
  const ScreenUpdate({super.key});

  @override
  State<ScreenUpdate> createState() => _ScreenUpdateState();
}

class _ScreenUpdateState extends State<ScreenUpdate> {
  String title = 'update page';
  String opt1 = 'Settings';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Color.fromARGB(255, 5, 156, 113),
            title: Text("Update"),
            actions: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
              PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Text(opt1),
                    value: opt1,
                  ),
                ],
                onSelected: (String newValue) {
                  setState(() {
                    title = newValue;
                  });
                },
              ),
            ]),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 5, 156, 113),
              radius: 45,
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/avatar.jpg'),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 5, 156, 113),
              radius: 45,
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/squrrel.jpg'),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 5, 156, 113),
              radius: 45,
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/gt.jpg'),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 5, 156, 113),
              radius: 45,
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/Thor.jpg'),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 5, 156, 113),
              radius: 45,
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/avatar.jpg'),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 5, 156, 113),
              radius: 45,
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/lambo.jpg'),
              ),
            ),
          ]),
        ));
  }
}
