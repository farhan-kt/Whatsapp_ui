import 'package:flutter/material.dart';

class CallBtn extends StatefulWidget {
  const CallBtn({super.key});

  @override
  State<CallBtn> createState() => _CallBtnState();
}

class _CallBtnState extends State<CallBtn> {
  String title = 'callbutton';
  String option1 = 'Invite a friend';
  String option2 = 'Contacts';
  String option3 = 'Refresh';
  String option4 = 'Help';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 5, 156, 113),
        title: Text("Select contact"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text(option1),
                value: option1,
              ),
              PopupMenuItem(
                child: Text(option2),
                value: option2,
              ),
              PopupMenuItem(
                child: Text(option3),
                value: option3,
              ),
              PopupMenuItem(
                child: Text(option4),
                value: option4,
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
      body: Column(children: [
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Color.fromARGB(255, 5, 156, 113),
              child: Icon(
                Icons.link,
                color: Colors.white,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "New call link",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            )
          ],
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Color.fromARGB(255, 5, 156, 113),
              child: Icon(
                Icons.group,
                color: Colors.white,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "New group",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            )
          ],
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Color.fromARGB(255, 5, 156, 113),
              child: Icon(
                Icons.person_add,
                color: Colors.white,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "New contacts",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            )
          ],
        ),
        Expanded(
          child: Container(
            child: ListView.builder(
                itemCount: 15,
                itemBuilder: (BuildContext context, Index) {
                  return ListTile(
                    onTap: () {},
                    // leading: CircleAvatar(
                    //   backgroundColor: Colors.blue,
                    //   child: Icon(
                    //     Icons.person,
                    //     color: Colors.white,
                    //   ),
                    // ),
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/monkey.jpg'),
                    ),
                    title: Text("person ${Index + 1}"),
                  );
                }),
          ),
        ),
      ]),
    );
    ;
  }
}
