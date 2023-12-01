import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  _loginPageState createState() => _loginPageState();
}

TabBar get _tabBar => TabBar(
      tabs: [
        Tab(icon: Icon(Icons.phone_android_outlined)),
        Tab(icon: Icon(Icons.email_outlined)),
      ],
    );

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/2.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: DefaultTabController(
        initialIndex: 1,
        length: 2,
        child: Container(
          padding: EdgeInsets.only(top: 130),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              bottom: PreferredSize(
                preferredSize: _tabBar.preferredSize,
                child: ColoredBox(
                  color: Colors.blue,
                  child: _tabBar,
                ),
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.cyan.shade100,
                          filled: true,
                          hintText: "Phone Number",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.cyan.shade100,
                          filled: true,
                          hintText: "Date of birth",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'final_page');
                          },
                          child: Text("Sign in"),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.cyan.shade100,
                          filled: true,
                          hintText: "Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.cyan.shade100,
                          filled: true,
                          hintText: "Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sign in',
                            style: TextStyle(
                                fontSize: 27,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.lightBlueAccent,
                            child: IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, 'final_page');
                              },
                              icon: Icon(Icons.arrow_forward),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'SignUp',
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
