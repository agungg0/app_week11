import 'package:flutter/material.dart';
import 'fun_fact_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AboutPage(),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF212529),
      appBar: AppBar(
        title: Text(
          'About Page',
          style: TextStyle(color: Color(0xFFF8F9FA)),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF343A40),
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/fototiga.jpg'),
                radius: 60,
              ),
            ),
            Divider(
              height: 100,
              color: Colors.grey[800],
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Color(0xFFADB5BD),
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Agung Budi Prasetya',
              style: TextStyle(
                color: Color(0xFFCED4DA),
                letterSpacing: 2.0,
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'NRP',
              style: TextStyle(
                color: Color(0xFFADB5BD),
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              '5026221176',
              style: TextStyle(
                color: Color(0xFFCED4DA),
                letterSpacing: 2.0,
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FunFactPage()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Fun Fact',
                    style: TextStyle(
                      color: Color(0xFFADB5BD),
                      letterSpacing: 2.0,
                    ),
                  ),
                  SizedBox(width: 15),
                  Icon(
                    Icons.arrow_right_alt,
                    color: Color(0xFFCED4DA),
                    size: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
