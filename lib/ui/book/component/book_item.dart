import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  const BookItem({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          const Spacer(),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: Colors.black,
            ),
          ),
          Text(
            subTitle,
            style: const TextStyle(
              fontSize: 25,
              color: Colors.black,
            ),
          ),

          //TODO 請求番号の説明を載っける

          //TODO 階層の写真を載っける。

          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Image.asset('assets/images/arrow.png'),
          ),
        ],
      ),
    );
  }
}
