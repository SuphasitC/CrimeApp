import 'package:crime/config/routes.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  SignIn({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  String username = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.superherodb.com/pictures2/portraits/10/050/19475.jpg?v=1589124315'),
                radius: 100,
              ),
            ),
            Text(
              'ชื่อผู้ใช้',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                controller: usernameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
            ),
            Text(
              'รหัสผ่าน',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            RawMaterialButton(
              onPressed: () => {
                Navigator.of(context).pop(),
                Navigator.of(context).pushNamed(AppRoutes.firstPage),
              },
              fillColor: Colors.orange,
              child: Text(
                'เข้าสู่ระบบ',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
