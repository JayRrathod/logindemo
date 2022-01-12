import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool isShowPassword = true;
  String usernameText = "";
  String passwordText = "";

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
          children: [
            SizedBox(height: 50),
            Image.asset('assets/image/abc.jpg'),
            SizedBox(height: 50),
            TextField(
              onChanged: (value) {
                usernameText = value;
              },
              decoration: InputDecoration(
                hintText: 'username',
              ),
            ),
            TextField(
              obscureText: isShowPassword,
              onChanged: (data) {
                passwordText = data;
              },
              decoration: InputDecoration(
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isShowPassword = !isShowPassword;
                      });
                    },
                    icon: Icon(isShowPassword ? Icons.visibility : Icons
                        .visibility_off)
                ),
                hintText: 'password',
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                print("me clicked");
                clickButton();
              },
              child: Text("login"),
              style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(40)),
            )
          ],
        ),
      ),
    );
  }

  void clickButton() {
    if (usernameText == ""){
      showMasg('enter your username');
      return;
    }
    if (passwordText == ""){
      showMasg('enter your password');
      return;
    }
  }

  void showMasg(text){
    var snackBar = SnackBar(content: Text(text));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
