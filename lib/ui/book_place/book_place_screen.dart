import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rissho_library_app/ui/book_place/book_place_provider.dart';
import 'package:rissho_library_app/ui/book_place/component/search_app_bar.dart';
import 'package:rissho_library_app/ui/book_place/component/search_empty_item.dart';
import 'component/search_result_item.dart';

class BookPlaceScreen extends HookConsumerWidget {
  const BookPlaceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(bookPlaceViewModelProvider());
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: const Color(0xFFFCFCFC),
        appBar: SearchAppBar(
          onChanged: ref.read(bookPlaceViewModelProvider().notifier).onChanged,
        ),
        body: state.when(
          firstLoading: () => const Center(child: CircularProgressIndicator()),
          empty: () => const SearchEmptyItem(),
          list: (searchResult) => SearchResultItem(
            searchResult: searchResult,
          ),
        ),
      ),
    );
  }
}
