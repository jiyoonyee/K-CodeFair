// lib/match_page.dart
import 'package:flutter/material.dart';
import './matchInputPage.dart';

class MatchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("매칭 페이지")),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
          child: Column(
            
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children : [Text("원하시는 분야를 선택해 주세요",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),textAlign: TextAlign.start,)]
              ),

            SizedBox(
            height: 10,
        ),

              Expanded(
                flex: 4  ,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff9DEB76),
                      borderRadius: BorderRadius.circular(20)
                    ),

                    padding: EdgeInsets.symmetric(vertical: 20,horizontal: 40),
                    child: Column(
                      children: [

                        Text(
                          "스마트폰 교육",
                          style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold,fontFamily: "PretendardBold"),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: GridView(
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisSpacing: 30,
                                    crossAxisSpacing: 30),
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Matchinputpage()),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xffFF9A9A),
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Image.asset("assets/images/heart.png"),)
                              ),
                              InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Matchinputpage()),
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffFDE04E),
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Image.asset("assets/images/bank.png"),)
                              ),
                              InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Matchinputpage()),
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xff899FFF),
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Image.asset("assets/images/trafic.png"),)
                              ),
                              InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Matchinputpage()),
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffBC7DFF),
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Image.asset("assets/images/store.png"),)
                              ),

                            ],
                          ),
                        )
                      ],
                    )
              )),
              SizedBox(
                height: 20,
              ),
              Expanded(
                flex: 1,
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Matchinputpage()),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      decoration: BoxDecoration(
                          color: Color(0xff9DEB76),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Image.asset("assets/images/kiosk.png"),)
                ),
              ),
            ],
          ),
        ));
  }
}
