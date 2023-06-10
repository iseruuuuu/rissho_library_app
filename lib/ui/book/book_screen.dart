import 'package:flutter/material.dart';
import 'package:rissho_library_app/ui/book/component/book_item.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFC),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF00A170),
        title: const Text(
          '図書館案内',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            BookItem(
              title: '3階',
              subTitle: '雑誌・論文',
            ),
            BookItem(
              title: '2階',
              subTitle: '多読図書・就職資格・学習支援コーナー・年鑑白書・参考図書・ビジネス',
            ),
            BookItem(
              title: '1階',
              subTitle: '哲学・文庫・新書・新聞コーナー・AV資料・新着本コーナー',
            ),
            BookItem(
              title: 'B1階',
              subTitle: '大型本・文学・言語・芸能・産業・技術・自然科学・自然科学・歴史',
            ),
          ],
        ),
      ),
    );
  }
}
