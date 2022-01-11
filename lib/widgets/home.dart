import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          children:[
            SizedBox(height:50),
            Image.asset('assets/image/abc.jpg'),
            SizedBox(height:50),
            TextField(
              decoration: InputDecoration(
                hintText: 'username',

              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'password',
              ),
            ),
            SizedBox(height: 40 ),
            ElevatedButton(
              onPressed: () {
                print("me clicked");
              },
              child: Text("login"),
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(40)
              ),
            )
          ],
        ),
      ),
    );
  }
}
