import 'package:flutter/material.dart';
import './home.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    super.initState();
    gotoHome();
  }

  Future<void> gotoHome() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => ScreenHome()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 250, left: 125),
            child: Image(
              image: AssetImage('assets/whatsapp.png'),
              width: 150,
            ),
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 150, left: 140),
                child: Text("from"),
              ),
              Container(
                padding: EdgeInsets.only(left: 120),
                child: Image(
                  image: NetworkImage(
                      'https://images.hindustantimes.com/tech/img/2021/10/28/960x540/FACEBOOK-CONNECT-5_1635447947639_1635447999621.JPG'),
                  width: 80,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
