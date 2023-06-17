import 'package:flutter/material.dart';

class SearchCategoryItem extends StatelessWidget {
  const SearchCategoryItem({
    super.key,
    required this.category,
    required this.select,
    required this.isSelected,
  });

  final String category;
  final VoidCallback select;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: select,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: !isSelected ? Colors.grey.shade100 : const Color(0xFF00A170),
        ),
        child: Text(
          category,
          style: TextStyle(
            color: !isSelected ? const Color(0xFF00A170) : Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
