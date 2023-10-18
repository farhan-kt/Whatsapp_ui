import 'package:flutter/material.dart';
import 'package:whatsapp/calls.dart';
import 'package:whatsapp/chats.dart';
import 'package:whatsapp/community.dart';
import 'package:whatsapp/update.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 5, 156, 113),
        title: Text("WhatsApp"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            color: Color.fromARGB(255, 5, 156, 113),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ScreenCommunity()));
                  },
                  icon: Icon(Icons.groups_3),
                  color: Color.fromARGB(255, 230, 222, 222),
                  iconSize: 30,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ScreenChat()));
                  },
                  child: Text("Chats",
                      style: TextStyle(
                          color: Color.fromARGB(255, 230, 222, 222),
                          fontSize: 20)),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ScreenUpdate()));
                  },
                  child: Text("Updates",
                      style: TextStyle(
                          color: Color.fromARGB(255, 230, 222, 222),
                          fontSize: 20)),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ScreenCall()));
                    },
                    child: Text("Calls",
                        style: TextStyle(
                            color: Color.fromARGB(255, 230, 222, 222),
                            fontSize: 20)))
              ],
            ),
          ),
          Expanded(
              child: Container(
            child: ListView.builder(
                itemCount: 15,
                itemBuilder: (BuildContext context, Index) {
                  return ListTile(
                    onTap: () {},
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    trailing: Text("10:${Index + 10 + 2}"),
                    title: Text("person ${Index + 1}"),
                  );
                }),
          ))
        ],
      ),
    );
  }
}
