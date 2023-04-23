import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(179, 212, 178, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(89, 129, 88, 1),
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    child: Image.asset('asset/images/calmpost.png')),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Forgot Password',
                style: TextStyle(
                    color: Color.fromRGBO(89, 129, 88, 1), fontSize: 15),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(89, 129, 88, 1),
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              margin: EdgeInsets.only(top: 75.0),
            ),
            SizedBox(
              height: 10,
            ),
            Text('New User? Create Account'),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(179, 212, 178, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(89, 129, 88, 1),
        title: Text('Home Page'),
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
            width: 200,
            height: 130,
            child: Image.asset('asset/images/calmpost.png'),
            margin: EdgeInsets.only(left: 20, top: 10),
          ),
          Container(
            width: 400,
            height: 250,
            child: Image.asset('asset/images/compost-box.png'),
            margin: EdgeInsets.only(left: 15, bottom: 30),
          ),
          Container(
            child: Text(
              'Reduce food waste one photo at a time!',
              style: TextStyle(
                  color: Color.fromRGBO(70, 101, 69, 1), fontSize: 20),
            ),
            margin: EdgeInsets.only(left: 25, bottom: 100),
          ),
          Container(
            height: 80,
            width: 350,
            decoration: BoxDecoration(
                color: Color.fromRGBO(89, 129, 88, 1),
                borderRadius: BorderRadius.circular(10)),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => LoginDemo()));
              },
              child: Text(
                'Welcome!',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            margin: EdgeInsets.only(left: 20, top: 25),
          ),
          Container(
            child: Text(
              'Already have an account? Log In',
              style: TextStyle(fontSize: 15),
            ),
            margin: EdgeInsets.only(top: 15),
          ),
        ]),
      ),
    );
  }
}
