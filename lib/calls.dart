import 'package:flutter/material.dart';

class ScreenCall extends StatefulWidget {
  const ScreenCall({super.key});

  @override
  State<ScreenCall> createState() => _ScreenCallState();
}

class _ScreenCallState extends State<ScreenCall> {
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
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Container(
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
                trailing: IconButton(onPressed: () {}, icon: Icon(Icons.call)),
                title: Text("person ${Index + 1}"),
              );
            }),
      ),
    );
  }
}
