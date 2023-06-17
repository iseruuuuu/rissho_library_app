import 'package:flutter/material.dart';

class SearchEmptyItem extends StatelessWidget {
  const SearchEmptyItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              '検索結果が見つかりません\n'
              '違う検索条件をお試しください',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xFF00A170),
              ),
            ),
          ),
          Image.asset(
            'assets/images/no.png',
            height: 150,
          ),
        ],
      ),
    );
  }
}
