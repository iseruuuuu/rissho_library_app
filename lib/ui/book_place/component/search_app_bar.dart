import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  final ValueChanged<String> onChanged;

  const SearchAppBar({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: const Color(0xFF00A170),
      title: SizedBox(
        height: 40,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: const Color(0xFF00A170),
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Center(
            child: Container(
              width: 340,
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              child: TextField(
                onChanged: onChanged,
                autocorrect: false,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: const InputDecoration(
                  hintText: 'Search Text',
                  prefixIcon: Icon(Icons.search),
                  contentPadding: EdgeInsets.only(left: 8.0),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  isDense: true,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
