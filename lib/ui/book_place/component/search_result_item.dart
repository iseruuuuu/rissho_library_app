import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rissho_library_app/ui/book_place/component/search_category_item.dart';

import '../book_place_provider.dart';

class SearchResultItem extends ConsumerWidget {
  const SearchResultItem({
    super.key,
    required this.searchResult,
  });

  final List<String> searchResult;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(bookPlaceViewModelProvider().notifier);
    final index = ref.watch(bookPlaceViewModelProvider().notifier).storeIndex;
    final floor = ref.watch(bookPlaceViewModelProvider().notifier).storeFloor;
    return Column(
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
        const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 50,
          ),
          child: Text(
            '検索結果',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xFF00A170),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 50,
            vertical: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '種類',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                searchResult[0],
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        (searchResult[1] != '予期せぬエラー')
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '詳細',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      searchResult[1],
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              )
            : Container(),
        (searchResult[2] != "")
            ? Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                      right: 50,
                      left: 50,
                    ),
                    child: Text(
                      '場所',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF00A170),
                      ),
                    ),
                  ),
                  const Text(
                    '🚨正確な場所ではない可能性があります',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Image.asset(
                      searchResult[2],
                      height: MediaQuery.of(context).size.width / 1.5,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              )
            : Container(),
      ],
    );
  }
}
