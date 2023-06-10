import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rissho_library_app/ui/book_place/book_place_provider.dart';
import 'package:rissho_library_app/ui/book_place/component/search_app_bar.dart';
import 'package:rissho_library_app/ui/book_place/component/search_empty_item.dart';

class BookPlaceScreen extends ConsumerWidget {
  const BookPlaceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchResult = ref.watch(bookPlaceProvider);
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFFCFCFC),
        appBar: SearchAppBar(
          onChanged: ref.read(bookPlaceProvider.notifier).onChanged,
        ),
        body: searchResult.isNotEmpty
            //TODO 検索結果のUIを作る
            ? Container(
                color: Colors.yellow,
              )
            : const SearchEmptyItem(),
      ),
    );
  }
}
