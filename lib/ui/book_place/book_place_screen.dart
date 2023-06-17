import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rissho_library_app/ui/book_place/book_place_provider.dart';
import 'package:rissho_library_app/ui/book_place/component/search_app_bar.dart';
import 'package:rissho_library_app/ui/book_place/component/search_empty_item.dart';
import 'package:rissho_library_app/ui/book_place/component/search_first_empty_item.dart';
import 'component/search_category_item.dart';
import 'component/search_result_item.dart';

class BookPlaceScreen extends HookConsumerWidget {
  const BookPlaceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(bookPlaceViewModelProvider());
    final notifier = ref.watch(bookPlaceViewModelProvider().notifier);
    final index = ref.watch(bookPlaceViewModelProvider().notifier).storeIndex;
    final floor = ref.watch(bookPlaceViewModelProvider().notifier).storeFloor;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: const Color(0xFFFCFCFC),
        appBar: SearchAppBar(
          onChanged: ref.read(bookPlaceViewModelProvider().notifier).onChanged,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Wrap(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SearchCategoryItem(
                        category: 'B1F',
                        select: () => ref
                            .read(bookPlaceViewModelProvider().notifier)
                            .selectFloor(0),
                        isSelected: floor == 0,
                      ),
                      SearchCategoryItem(
                        category: '1F',
                        select: () => ref
                            .read(bookPlaceViewModelProvider().notifier)
                            .selectFloor(1),
                        isSelected: floor == 1,
                      ),
                      SearchCategoryItem(
                        category: '2F',
                        select: () => ref
                            .read(bookPlaceViewModelProvider().notifier)
                            .selectFloor(2),
                        isSelected: floor == 2,
                      ),
                      SearchCategoryItem(
                        category: '3F',
                        select: () => ref
                            .read(bookPlaceViewModelProvider().notifier)
                            .selectFloor(3),
                        isSelected: floor == 3,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: Wrap(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        notifier.is2Floor
                            ? SearchCategoryItem(
                                category: '就職資格',
                                select: () => ref
                                    .read(bookPlaceViewModelProvider().notifier)
                                    .selectCategory(0),
                                isSelected: index == 0,
                              )
                            : Container(),
                        notifier.is2Floor
                            ? SearchCategoryItem(
                                category: '学習支援',
                                select: () => ref
                                    .read(bookPlaceViewModelProvider().notifier)
                                    .selectCategory(1),
                                isSelected: index == 1,
                              )
                            : Container(),
                        notifier.is2Floor
                            ? SearchCategoryItem(
                                category: '年間白書',
                                select: () => ref
                                    .read(bookPlaceViewModelProvider().notifier)
                                    .selectCategory(2),
                                isSelected: index == 2,
                              )
                            : Container(),
                        notifier.is2Floor
                            ? SearchCategoryItem(
                                category: '参考図書',
                                select: () => ref
                                    .read(bookPlaceViewModelProvider().notifier)
                                    .selectCategory(3),
                                isSelected: index == 3,
                              )
                            : Container(),
                        notifier.is1Floor
                            ? SearchCategoryItem(
                                category: '日蓮学',
                                select: () => ref
                                    .read(bookPlaceViewModelProvider().notifier)
                                    .selectCategory(4),
                                isSelected: index == 4,
                              )
                            : Container(),
                        notifier.isB1Floor
                            ? SearchCategoryItem(
                                category: '大型本',
                                select: () => ref
                                    .read(bookPlaceViewModelProvider().notifier)
                                    .selectCategory(5),
                                isSelected: index == 5,
                              )
                            : Container(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            state.when(
              firstLoading: () =>
                  const Center(child: CircularProgressIndicator()),
              empty: () => const SearchEmptyItem(),
              firstEmpty: () => const SearchFirstEmptyItem(),
              list: (searchResult) => SearchResultItem(
                searchResult: searchResult,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
