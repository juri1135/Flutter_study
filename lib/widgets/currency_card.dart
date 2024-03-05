import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final String text, price, unit;
  final IconData icon;
  //어차피 색은 두 타입이니까 (order==2)이용해서 변수 줄이기
  final black = const Color.fromARGB(255, 48, 43, 45);
  final wo = const Color.fromARGB(181, 255, 255, 255);
  final white = Colors.white;
  final double x, y, iconsize;
  final int order;

  const Box({
    super.key,
    required this.text,
    required this.price,
    required this.unit,
    required this.icon,
    required this.x,
    required this.y,
    required this.iconsize,
    required this.order,
  });
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -(order - 1) * 20),
      child: Container(
        //icon이 Container밖으로 나왔으니까 잘라주기!
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: (order == 2) ? white : black,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      color: (order == 2) ? black : white,
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        price,
                        style: TextStyle(
                          color: (order == 2) ? black : white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        unit,
                        style: TextStyle(
                          color: (order == 2) ? black : wo,
                          fontSize: 13,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              //crtl+space바 누르면 미리보기 활성화
              Transform.scale(
                //몇 배 크게 할 건데용? 이건 보다시피 icon만 갖고 있으니까 icon 크기만 바꾸는 거임!
                scale: 3.5,
                //위치 조정!
                child: Transform.translate(
                  offset: Offset(x, y),
                  child: Icon(
                    icon,
                    color: (order == 2) ? black : white,
                    size: iconsize,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
