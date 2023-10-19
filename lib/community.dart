import 'package:flutter/material.dart';

class ScreenCommunity extends StatefulWidget {
  const ScreenCommunity({super.key});

  @override
  State<ScreenCommunity> createState() => _ScreenCommunityState();
}

class _ScreenCommunityState extends State<ScreenCommunity> {
  String title = 'Community page';
  String ctopt1 = 'Settings';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 5, 156, 113),
        title: Text("Community"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
          PopupMenuButton(
            itemBuilder: (context) =>
                [PopupMenuItem(child: Text(ctopt1), value: ctopt1)],
            onSelected: (String newValue) {
              setState(() {
                title = newValue;
              });
            },
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage('assets/community.png')),
          SizedBox(
            height: 80,
          ),
          Column(
            children: [
              Text(
                "Stay connected with community",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  padding: EdgeInsets.only(bottom: 30),
                  child: Text(
                      " Communities bring members together in topic based groups."))
            ],
          )
        ],
      ),
    );
  }
}
