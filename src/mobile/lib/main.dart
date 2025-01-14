import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //디버그창 없애는거
      title: 'growth prediction',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'images/TitleLogo.png',
          width: 500.0,
          height: 150.0,
        ),
        centerTitle: true,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            onPressed: () {}, //로그아웃창 넣을것
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 80.0,
              child: const UserAccountsDrawerHeader(
                //const 지워야할수도
                accountName: Text('Temp name'),
                accountEmail: Text('Temp email'),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.food_bank,
                color: Color.fromARGB(255, 24, 23, 23),
              ),
              title: const Text('식단'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.run_circle,
                color: Color.fromARGB(255, 24, 23, 23),
              ),
              title: const Text('운동량'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.alarm,
                color: Color.fromARGB(255, 24, 23, 23),
              ),
              title: const Text('수면'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.addchart_rounded,
                color: Color.fromARGB(255, 24, 23, 23),
              ),
              title: const Text('현재 정보보기'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.add_to_queue_outlined,
                color: Color.fromARGB(255, 24, 23, 23),
              ),
              title: const Text('이전 검사결과 상세보기'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
