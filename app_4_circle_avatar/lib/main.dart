import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          // child: Column(
          //   // verticalDirection: VerticalDirection.up,
          //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   // mainAxisAlignment: MainAxisAlignment.center,
          //   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   // mainAxisAlignment: MainAxisAlignment.spaceAround,
          //
          //   crossAxisAlignment: CrossAxisAlignment.end,
          //   // crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //     Container(
          //       margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          //       padding: EdgeInsets.all(10.0),
          //       height: 150.0,
          //       width: 100.0,
          //       color: Colors.white,
          //       child: Text(
          //         'Container 1',
          //       ),
          //     ),
          //     SizedBox(
          //       height: 30.0,
          //     ),
          //     Container(
          //       margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          //       padding: EdgeInsets.all(10.0),
          //       height: 150.0,
          //       width: 200.0,
          //       color: Colors.teal[300],
          //       child: Text(
          //         'Container 2',
          //       ),
          //     ),
          //     SizedBox(
          //       height: 30.0,
          //     ),
          //     Container(
          //       margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          //       padding: EdgeInsets.all(10.0),
          //       height: 150.0,
          //       width: 150.0,
          //       color: Colors.blueGrey[200],
          //       child: Text(
          //         'Container 3',
          //       ),
          //     ),
          //     Container(
          //       width: double.infinity,
          //     )
          //   ],
          // ),

          // child: Column(
          //   children: [
          //     Container(
          //       margin: EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 10.0),
          //       padding: EdgeInsets.all(10.0),
          //       height: 150.0,
          //       width: double.infinity,
          //       color: Colors.white,
          //       child: Text(
          //         'Container 1',
          //       ),
          //     ),
          //
          //     Container(
          //       margin: EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 10.0),
          //       padding: EdgeInsets.all(10.0),
          //       height: 150.0,
          //       width: double.infinity,
          //       color: Colors.teal[300],
          //       child: Text(
          //         'Container 2',
          //       ),
          //     ),
          //
          //     Container(
          //       margin: EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 10.0),
          //       padding: EdgeInsets.all(10.0),
          //       height: 150.0,
          //       width: double.infinity,
          //       color: Colors.blueGrey[200],
          //       child: Text(
          //         'Container 3',
          //       ),
          //     ),
          //     Container(
          //       width: double.infinity,
          //     )
          //   ],
          // ),

          // child: Row(
          //   children: [
          //     Container(
          //       margin: EdgeInsets.all(10.0),
          //       padding: EdgeInsets.all(10.0),
          //       color: Colors.white,
          //       width: 150.0,
          //       child: Text(
          //         'Container 1',
          //       ),
          //     ),
          //
          //     Container(
          //       margin: EdgeInsets.all(10.0),
          //       padding: EdgeInsets.all(10.0),
          //       color: Colors.teal[300],
          //       child: Text(
          //         'Container 2',
          //       ),
          //     ),
          //
          //     Container(
          //       margin: EdgeInsets.all(10.0),
          //       padding: EdgeInsets.all(10.0),
          //       color: Colors.blueGrey[200],
          //       child: Text(
          //         'Container 3',
          //       ),
          //     ),
          //
          //   ],
          // ),

          child: Column(
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/profile_image.png'),
              ),
              Text(
                  'Muhammad Jamil',
                style: TextStyle(
                  fontFamily: 'Pacific',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                ),
              Text(
                'Senior Software Engineer',
                style: TextStyle(
                  fontFamily: 'Source Sans',
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  color: Colors.teal[50],
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'jamil138.amin@gmail.com',
                    style: TextStyle(
                      color: Colors.teal,
                      fontFamily: 'Source Sans',
                      fontSize: 20.0,

                    ),
                  )
                ],
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
