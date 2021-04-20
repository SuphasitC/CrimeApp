import 'package:crime/config/routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isHuman = true;

  void _incrementCounter() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Suphasit',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              accountEmail: Text(
                '6010110352@psu.ac.th',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.superherodb.com/pictures2/portraits/10/050/19475.jpg?v=1589124315'),
              ),
            ),
            ListTile(
              title: Text(
                'หน้าแรก',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () => {
                Navigator.of(context).pop(), //out from drawer
                Navigator.of(context).pop(),
                Navigator.of(context).pushNamed(AppRoutes.firstPage),
              },
            ),
            ListTile(
              title: Text(
                'ถ่ายตัวบุคคล',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () => {},
            ),
            ListTile(
              title: Text(
                'ถ่ายรถยนต์',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () => {},
            ),
            ListTile(
              title: Text(
                'ออกจากระบบ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () => {
                Navigator.of(context).pop(),
                Navigator.of(context).pop(),
                Navigator.of(context).pushNamed(AppRoutes.signin),
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'เลือกถ่ายภาพ...',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://www.superherodb.com/pictures2/portraits/10/050/19475.jpg?v=1589124315'),
              radius: 80,
            ),
            Text(
              'ตัวบุคคล',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToCZP2FZmuGMQFT0CvFnfVioovyI-ZW9SqcA&usqp=CAU'),
              radius: 80,
            ),
            Text(
              'รถยนต์',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'วิธีใช้',
        child: Icon(Icons.question_answer),
      ),
    );
  }
}
