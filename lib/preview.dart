import 'package:flutter/material.dart';

class preView extends StatefulWidget {
  const preView({super.key});

  @override
  State<preView> createState() => _previewState();
}

class _previewState extends State<preView> {
  @override
  void initState() {
    super.initState();
    _navigate();
  }

  _navigate() async {
    await Future.delayed(Duration(milliseconds: 4000), () {});
    Navigator.pushNamed(context, 'home_page');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/2.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.4,
            right: 35,
            left: 35,
          ),
          child: Column(
            children: [
              Center(
                child: Text(
                  "CodeForces\n  Visualizer",
                  style: TextStyle(
                      color: (Colors.yellowAccent),
                      fontSize: 40,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.3,
                  right: 35,
                  left: 35,
                ),
                child: Text(
                  "LOOPR",
                  style: TextStyle(
                      color: (Colors.yellowAccent),
                      fontSize: 15,
                      fontWeight: FontWeight.w800),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
