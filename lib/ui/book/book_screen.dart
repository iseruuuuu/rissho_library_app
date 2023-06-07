import 'package:flutter/material.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFC),
      appBar: AppBar(
        elevation: 1,
        backgroundColor: const Color(0xFFFCFCFC),
        shape: const Border(
          bottom: BorderSide(
            color: Colors.black,
            width: 2,
          ),
        ),
        title: const Text(
          '図書館案内',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(
                '3階',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
              Text('雑誌・論文'),
              Text(
                '2階',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
              Text('多読図書・就職資格・学習支援コーナー・年鑑白書・参考図書・ビジネス'),
              Text(
                '1階',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
              Text('哲学・文庫・新書・新聞コーナー・AV資料・新着本コーナー'),
              Text(
                'B1階',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
              Text('大型本・文学・言語・芸能・産業・技術・自然科学・自然科学・歴史'),
            ],
          ),
        ),
      ),
    );
  }
}
