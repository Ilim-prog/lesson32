import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: MaterialColor(
          0xff27AE60,
          const <int, Color>{
            50: Color(0xff27AE60),
            100: Color(0xff27AE60),
            200: Color(0xff27AE60),
            300: Color(0xff27AE60),
            400: Color(0xff27AE60),
            500: Color(0xff27AE60),
            600: Color(0xff27AE60),
            700: Color(0xff27AE60),
            800: Color(0xff27AE60),
            900: Color(0xff27AE60),
          },
        ),
      ),
      home: Begemot(),
    );
  }
}

class Begemot extends StatelessWidget {
  const Begemot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Color(0xff27AE60),
        leading: Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.white,
        ),
        title: Text(
          'Папка 2',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Image.asset(
            'assets/images/right.png',
            width: 24,
            height: 24,
          ),
          SizedBox(
            width: 15,
          ),
          Image.asset(
            'assets/images/right2.png',
            width: 24,
            height: 24,
          ),
          SizedBox(
            width: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Image.asset(
              'assets/images/buy.png',
              width: 24,
              height: 24,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 25, top: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomCard(
              image: 'assets/images/image 21.png',
              orderNum: 123123,
              date: '22.02.2022',
              title: 'Гусеница в сборе',
              subtitle: 'Howo/ Самосвал/ Ходовка',
              actual: 4,
              amount: 21,
              predl: 123,
              message: 123,
            ),
            SizedBox(
              height: 24,
            ),
            CustomCard(
              image: 'assets/images/image 22.png',
              orderNum: 123123,
              date: '22.02.2022',
              title: 'Форсунка Bosch ',
              subtitle: 'Howo/ Самосвал/ Ходовка',
              actual: 4,
              amount: 21,
              predl: 123,
              message: 123,
            ),
            SizedBox(
              height: 24,
            ),
            CustomCard(
              image: 'assets/images/image 22.png',
              orderNum: 123123,
              date: '22.02.2022',
              title: 'Гусеница в сборе',
              subtitle: 'Toyota/Land Cruiser Prado/Топливная система',
              actual: 10,
              amount: 1,
              predl: 123,
              message: 123,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 64,
        width: 64,
        decoration: BoxDecoration(
          color: const Color(0xffF24242),
          borderRadius: BorderRadius.circular(40),
        ),
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final int orderNum;
  final String date;
  final String image;
  final String title;
  final String subtitle;
  final int amount;
  final int message;
  final int actual;
  final int predl;

  const CustomCard({
    Key? key,
    required this.orderNum,
    required this.date,
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.message,
    required this.actual,
    required this.predl,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 12,
      ),
      width: 343,
      height: 272,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            spreadRadius: 5,
            color: Colors.grey[300]!,
          )
        ],
        color: Colors.white70,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Заявка ',
                style: TextStyle(color: Color(0xff27AE60)),
              ),
              Text(
                ' № ${orderNum}',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                width: 24,
              ),
              Text(
                date,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              Spacer(),
              Icon(
                Icons.more_vert_outlined,
                color: Colors.black,
              )
            ],
          ),
          SizedBox(
            height: 14,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                image,
                width: 56,
                height: 56,
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(title),
                  SizedBox(height: 2),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text(
                      subtitle,
                      style: TextStyle(color: Color(0xff219653)),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 23,
          ),
          Row(
            children: [
              Expanded(
                flex: 10,
                child: Row(
                  children: [
                    Text(
                      'Количество (шт ):    ',
                      style: TextStyle(color: Color(0xff828282)),
                    ),
                    Spacer(),
                    Text(amount.toString()),
                  ],
                ),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 10,
                child: Row(
                  children: [
                    Text(
                      'Предложения: ',
                      style: TextStyle(color: Color(0xff828282)),
                    ),
                    Spacer(),
                    Flexible(
                      child: Text(
                        predl.toString(),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Expanded(
                flex: 10,
                child: Row(
                  children: [
                    Text(
                      'Актуальность (дни):  ',
                      style: TextStyle(color: Color(0xff828282)),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Text('3'),
              Spacer(
                flex: 1,
              ),
              Expanded(
                flex: 8,
                child: Row(
                  children: [
                    Text(
                      'Сообщения:',
                      style: TextStyle(
                        color: Color(0xff828282),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Flexible(
                  child: Text(
                '6',
                overflow: TextOverflow.ellipsis,
              )),
            ],
          ),
          SizedBox(
            height: 31,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: const Color(0xff27AE60),
              fixedSize: const Size(305, 48),
            ),
            onPressed: () {},
            child: const Text(
              "Сообщения",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
