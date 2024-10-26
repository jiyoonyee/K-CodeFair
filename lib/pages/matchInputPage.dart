// lib/match_page.dart
import 'package:flutter/material.dart';

class Matchinputpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("메치 어쩌고 페이지")),
        body: Padding(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children : [Text("교육을 위한 정보를 입력해주세요",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),textAlign: TextAlign.start,)]
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 60 ,vertical: 30),
                      decoration: BoxDecoration(
                        color: Color(0xff8BE75D),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("이름 : ", style: TextStyle(fontSize: 30),),
                              Expanded(
                                child: TextField(
                                    style: TextStyle(fontSize: 24),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: '이름을 입력해주세요',
                                    )
                                )
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("연락처 : ", style: TextStyle(fontSize: 30),),
                              Expanded(
                                  child: TextField(
                                      style: TextStyle(fontSize: 24),
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: '이름을 입력해주세요',
                                      )
                                  )
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("거주지역 : ", style: TextStyle(fontSize: 30),),
                              Expanded(
                                  child: TextField(
                                      style: TextStyle(fontSize: 24),
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: '이름을 입력해주세요',
                                      )
                                  )
                              ),
                            ],
                          ),

                        ],
                      ),
                    )
                )

              ],

            ),
        )
    );
  }
}
