import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  const BookItem({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.image,
    required this.isForward,
    required this.isBack,
    required this.controller,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final String image;
  final bool isForward;
  final bool isBack;
  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size.width;
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              subTitle,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
          Image.asset(
            image,
            height: 400,
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                GestureDetector(
                  onTap: isBack
                      ? () {
                          controller.animateTo(
                            controller.offset - deviceSize,
                            duration: const Duration(seconds: 1),
                            curve: Curves.easeInOut,
                          );
                        }
                      : null,
                  child: isBack
                      ? Image.asset(
                          'assets/images/back_arrow.png',
                          height: 80,
                        )
                      : const SizedBox.shrink(),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: isForward
                      ? () {
                          controller.animateTo(
                            controller.offset + deviceSize,
                            duration: const Duration(seconds: 1),
                            curve: Curves.easeInOut,
                          );
                        }
                      : null,
                  child: isForward
                      ? Image.asset(
                          'assets/images/forward_arrow.png',
                          height: 80,
                        )
                      : const SizedBox.shrink(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
