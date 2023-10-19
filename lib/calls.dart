import 'package:flutter/material.dart';
import 'package:whatsapp/callbutton.dart';

class ScreenCall extends StatefulWidget {
  const ScreenCall({super.key});

  @override
  State<ScreenCall> createState() => _ScreenCallState();
}

class _ScreenCallState extends State<ScreenCall> {
  String title = 'call page';
  String callopt1 = 'Clear call log';
  String callopt2 = 'Settings';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 5, 156, 113),
        title: Text("Calls"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text(callopt1),
                value: callopt1,
              ),
              PopupMenuItem(
                child: Text(callopt2),
                value: callopt2,
              ),
            ],
            onSelected: (String newValue) {
              setState(() {
                title = newValue;
              });
            },
          )
        ],
      ),
      body: Container(
        child: ListView.builder(
            itemCount: 15,
            itemBuilder: (BuildContext context, Index) {
              return ListTile(
                onTap: () {},
                leading: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 5, 156, 113),
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.call,
                      color: Color.fromARGB(255, 5, 156, 113),
                    )),
                title: Text("person ${Index + 1}"),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 5, 156, 113),
        splashColor: Colors.white,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CallBtn()));
        },
        child: Icon(Icons.message),
      ),
    );
  }
}
