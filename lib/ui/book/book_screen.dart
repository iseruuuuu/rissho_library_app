import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rissho_library_app/ui/book/book_provider.dart';
import 'package:rissho_library_app/ui/book/component/book_item.dart';

class BookScreen extends ConsumerWidget {
  const BookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = ref.watch(scrollControllerProvider);
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
      body: SingleChildScrollView(
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            BookItem(
              title: '3階',
              subTitle: '雑誌・論文',
              image: 'assets/places/3.png',
              isBack: false,
              isForward: true,
              controller: scrollController,
            ),
            BookItem(
              title: '2階',
              subTitle: '多読図書・就職資格・学習支援コーナー・年鑑白書・参考図書・ビジネス',
              image: 'assets/places/2.png',
              isBack: true,
              isForward: true,
              controller: scrollController,
            ),
            BookItem(
              title: '1階',
              subTitle: '哲学・文庫・新書・新聞コーナー・AV資料・新着本コーナー',
              image: 'assets/places/1.png',
              isBack: true,
              isForward: true,
              controller: scrollController,
            ),
            BookItem(
              title: 'B1階',
              subTitle: '大型本・文学・言語・芸能・産業・技術・自然科学・自然科学・歴史',
              image: 'assets/places/b1.png',
              isBack: true,
              isForward: false,
              controller: scrollController,
            ),
          ],
        ),
      ),
    );
  }
}
