import 'package:flutter/material.dart';
import 'widgets/button.dart';
import 'widgets/currency_card.dart';

// void main() {
//   runApp(const App());
// }

//widget으로 만들기 위해서 flutter SDK에 있는 3개의 core Widget중에 하나를 상속받아야 한다.
//statelessWidget은 말 그대로 ui만 보여주고, statefulwidget은 interactive하다.
class App extends StatelessWidget {
  const App({super.key});

  //build메소드가 뭘 return하든지 이뮬레이터에서 보여줌 widget의 ui을 만들어준다.
  //App을 widget으로 만들기 위해서 StatelessWidget을 상속받음. 따라서 우리는 이 widget과 계약을 이행해야 함.
  //StatelessWidget은 화면에 뭔가를 띄워주는 거 말고는 하는 일이 없다.
  //그 계약이 build 메소드 작성하기. build는 flutter가 실행하게 될 메소드인데, 뭘 return하든 그걸 화면에 띄워줌.
  @override
  //StatelessWidget에 build라는 method가 있으니까 override
  Widget build(BuildContext context) {
    //build method는 무엇이든 다 return할 거니까 return type은 Widget
    //Widget을 return할 때는 material 혹은 cupertino를 return한다.
    //material은 구글의 디자인 시스템, cupertino는 애플의 디자인 시스템
    //나만의 디자인을 return하고 싶어도 일단 시작점을 설정해주어야 함.
    //화면은 scaffold라는 것을 가져야 한다.
    //scaffold는 우리 화면의 구조를 제공해준다. 상단 버튼, 화면 중앙 정렬 등등 대부분의 것들!
    return const MaterialApp(
      //상하에 무언가를 배치하고 싶다면, column을 사용! 열 벡터 생각하면 원소 하나 늘어날 때마다 밑으로 내려감
      //좌우에 무언가를 배치하고 싶다면, row를 사용! 행 벡터 생각하면 원소 하나 늘어날 때마다 우측으로 늘어남
      home: Scaffold(
        backgroundColor: Color(0xff181818),
        body: Padding(
          //body 전체에 padding 넣기, 오른쪽에 10px 정도
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //제일 위에 검은색 박스 만들어서 text 위에 간격 만들기
              SizedBox(
                height: 30,
              ),
              Row(
                //Row에서 axis 정렬은 수직 정렬
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                      //Column에서 axis 정렬은 수평 정렬
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Hey, Juri',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            )),
                        Text('Welcome back',
                            style: TextStyle(
                              color: Color.fromARGB(102, 255, 255, 255),
                              //color: Color.white.withOpacity(0.8), 투명도 조절 1이 완벽한 불투명
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            )),
                      ])
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                "Total Balance",
                style: TextStyle(
                  color: Color.fromARGB(190, 223, 213, 213),
                  fontSize: 22,
                ),
              ),
              Text(
                "\$5 194 382",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 43,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 17,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                    text: "transfer",
                    bgColor: Color.fromARGB(255, 245, 108, 154),
                    textColor: Colors.black,
                  ),
                  // const SizedBox(
                  //   width: 18,
                  // ),
                  //이렇게 하는 거 대신 두 Container의 부모인 row의 정렬을 spacebetween으로! row가 가진 공간에서 두 객체를 정확히 반반
                  Button(
                    text: "Request",
                    bgColor: Color.fromARGB(255, 48, 43, 45),
                    textColor: Color.fromARGB(255, 142, 137, 137),
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Row(
                //crossAxisAlignment: CrossAxisAlignment.end,
                //main은 가로축~~ 가로 기준으로 가운데에 공간 두고 멀어지렴
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //Cross는 세로축~~ 즉 세로 기준 가장 밑에 위치하렴

                children: [
                  Text(
                    "Wallets",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      color: Color.fromRGBO(149, 148, 148, 1),
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Box(
                text: "Euro",
                price: "6 428",
                unit: "EUR",
                icon: Icons.euro_rounded,
                iconsize: 48,
                x: -11,
                y: 6,
                order: 1,
              ),
              Box(
                text: "Dollar",
                price: "55 622",
                unit: "USD",
                icon: Icons.attach_money_outlined,
                iconsize: 61,
                x: -7,
                y: 6,
                order: 2,
              ),
              Box(
                text: "Rupee",
                price: "28 981",
                unit: "INR",
                icon: Icons.currency_rupee_rounded,
                iconsize: 50,
                x: -11,
                y: 7,
                order: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
