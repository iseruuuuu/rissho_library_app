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
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              '↓を参考に検索をしてください',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Color(0xFF00A170),
              ),
            ),
          ),
          Stack(
            children: [
              Image.asset(
                'assets/places/example.png',
                width: 200,
                height: 300,
                fit: BoxFit.contain,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  width: 200,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: const Color(0xFF00A170),
                      width: 10,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
