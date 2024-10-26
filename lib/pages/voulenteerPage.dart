// lib/match_page.dart
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Voulenteerpage extends StatefulWidget {
  @override
  _MatchInputPageState createState() => _MatchInputPageState();
}

class _MatchInputPageState extends State<Voulenteerpage> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("매칭 페이지")),
      resizeToAvoidBottomInset: true, // 키보드에 따라 화면 크기를 조정
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "교육을 위한 정보를 입력해주세요",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView( // 스크롤 가능하게 만듭니다.
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 30),
                  decoration: BoxDecoration(
                    color: Color(0xff8BE75D),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "이름 : ",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                            child: TextField(
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '이름을 입력해주세요',
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "연락처 : ",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                            child: TextField(
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '연락처를 입력해주세요',
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "E-mail : ",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                            child: TextField(
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '이메일을 입력해주세요',
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "봉사지역 : ",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                            child: TextField(
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '봉사지역을 입력해주세요',
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "봉사분야 : ",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                            child: TextField(
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '봉사분야를 입력해주세요',
                              ),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),

            ),

          ],
        ),
      ),
    );
  }
}
