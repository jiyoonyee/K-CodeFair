import 'package:flutter/material.dart';
import './pages/matchPage.dart';
import './pages/mainPage.dart';// match_page 파일을 import

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(), // 최상위 위젯으로 MyHomePage 연결
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 100, horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 3,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  minimumSize: Size(double.infinity, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  // Navigator를 통해 matchPage로 이동

                },
                child: Text(
                  "자원 봉사자 \n매칭하기",
                  style: TextStyle(color: Colors.white, fontSize: 50),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MatchPage()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xff7ED950),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Image.asset("assets/images/matchButton.png"),)
            ),
            SizedBox(height: 40),
            Expanded(
              flex: 3,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  minimumSize: Size(double.infinity, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "자원봉사\n시작하기",
                  style: TextStyle(color: Colors.white, fontSize: 50),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 40),
            Expanded(
              flex: 1,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff52CF14),
                  minimumSize: Size(double.infinity, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Mainpage()),
                  );
                },
                child: Text(
                  "이음 들어가기",
                  style: TextStyle(color: Colors.white, fontSize: 40,fontFamily: 'PretendardBold'),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
