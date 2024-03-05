import 'package:flutter/material.dart';
import 'widgets/button.dart';
import 'widgets/currency_card.dart';

// void main() {
//   runApp(const App());
// }

//widget���� ����� ���ؼ� flutter SDK�� �ִ� 3���� core Widget�߿� �ϳ��� ��ӹ޾ƾ� �Ѵ�.
//statelessWidget�� �� �״�� ui�� �����ְ�, statefulwidget�� interactive�ϴ�.
class App extends StatelessWidget {
  const App({super.key});

  //build�޼ҵ尡 �� return�ϵ��� �̹ķ����Ϳ��� ������ widget�� ui�� ������ش�.
  //App�� widget���� ����� ���ؼ� StatelessWidget�� ��ӹ���. ���� �츮�� �� widget�� ����� �����ؾ� ��.
  //StatelessWidget�� ȭ�鿡 ������ ����ִ� �� ����� �ϴ� ���� ����.
  //�� ����� build �޼ҵ� �ۼ��ϱ�. build�� flutter�� �����ϰ� �� �޼ҵ��ε�, �� return�ϵ� �װ� ȭ�鿡 �����.
  @override
  //StatelessWidget�� build��� method�� �����ϱ� override
  Widget build(BuildContext context) {
    //build method�� �����̵� �� return�� �Ŵϱ� return type�� Widget
    //Widget�� return�� ���� material Ȥ�� cupertino�� return�Ѵ�.
    //material�� ������ ������ �ý���, cupertino�� ������ ������ �ý���
    //������ �������� return�ϰ� �; �ϴ� �������� �������־�� ��.
    //ȭ���� scaffold��� ���� ������ �Ѵ�.
    //scaffold�� �츮 ȭ���� ������ �������ش�. ��� ��ư, ȭ�� �߾� ���� ��� ��κ��� �͵�!
    return const MaterialApp(
      //���Ͽ� ���𰡸� ��ġ�ϰ� �ʹٸ�, column�� ���! �� ���� �����ϸ� ���� �ϳ� �þ ������ ������ ������
      //�¿쿡 ���𰡸� ��ġ�ϰ� �ʹٸ�, row�� ���! �� ���� �����ϸ� ���� �ϳ� �þ ������ �������� �þ
      home: Scaffold(
        backgroundColor: Color(0xff181818),
        body: Padding(
          //body ��ü�� padding �ֱ�, �����ʿ� 10px ����
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //���� ���� ������ �ڽ� ���� text ���� ���� �����
              SizedBox(
                height: 30,
              ),
              Row(
                //Row���� axis ������ ���� ����
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                      //Column���� axis ������ ���� ����
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
                              //color: Color.white.withOpacity(0.8), ���� ���� 1�� �Ϻ��� ������
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
                  //�̷��� �ϴ� �� ��� �� Container�� �θ��� row�� ������ spacebetween����! row�� ���� �������� �� ��ü�� ��Ȯ�� �ݹ�
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
                //main�� ������~~ ���� �������� ����� ���� �ΰ� �־�����
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //Cross�� ������~~ �� ���� ���� ���� �ؿ� ��ġ�Ϸ�

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
