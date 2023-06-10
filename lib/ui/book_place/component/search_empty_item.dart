import 'package:flutter/material.dart';

class SearchEmptyItem extends StatelessWidget {
  const SearchEmptyItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '↓を参考に検索をしてください',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Color(0xFF00A170),
            ),
          ),

          //TODO どこをみたらいいのかの画像を載せる。
        ],
      ),
    );
  }
}
