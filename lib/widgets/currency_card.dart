import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final String text, price, unit;
  final IconData icon;
  //������ ���� �� Ÿ���̴ϱ� (order==2)�̿��ؼ� ���� ���̱�
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
        //icon�� Container������ �������ϱ� �߶��ֱ�!
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
              //crtl+space�� ������ �̸����� Ȱ��ȭ
              Transform.scale(
                //�� �� ũ�� �� �ǵ���? �̰� ���ٽ��� icon�� ���� �����ϱ� icon ũ�⸸ �ٲٴ� ����!
                scale: 3.5,
                //��ġ ����!
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
