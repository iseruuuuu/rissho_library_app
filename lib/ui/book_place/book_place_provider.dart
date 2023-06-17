import 'package:rissho_library_app/ui/book_place/book_place_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../utils/book_place_utils.dart';

part 'book_place_provider.g.dart';

@riverpod
class BookPlaceViewModel extends _$BookPlaceViewModel {
  @override
  BookPlaceState build({
    BookPlaceState initState = const BookPlaceState.firstEmpty(),
  }) {
    return initState;
  }

  var keyword = '';
  int storeIndex = 100;
  int storeFloor = 100;
  bool is2Floor = false;
  bool isB1Floor = false;

  void onChanged(String value) {
    if (value.isEmpty) {
      state = const BookPlaceState.firstEmpty();
      return;
    }
    state = state.map(
      firstLoading: (_) => throw AssertionError(),
      firstEmpty: (_) => const BookPlaceState.firstLoading(),
      empty: (_) => const BookPlaceState.firstLoading(),
      list: (_) => const BookPlaceState.firstLoading(),
    );

    //TODO 修正する（検索結果がエラーの実装）
    if (BookPlaceUtils().getBooKData(int.parse(value), 100) == '予期せぬエラー') {
      state = const BookPlaceState.empty();
      return;
    }

    final List<String> bookList = BookPlaceUtils().getData(
      int.parse(value),
      value,
      storeFloor,
      storeIndex,
    );
    keyword = value;
    state = BookPlaceState.list(bookPlaceList: bookList);
  }

  void selectFloor(int floor) {
    if (storeFloor == floor) {
      storeFloor = 100;
      is2Floor = false;
      isB1Floor = false;
    } else {
      storeFloor = 100;
      storeFloor = floor;
      if (floor == 2) {
        is2Floor = true;
        isB1Floor = false;
      } else if (floor == 0) {
        is2Floor = false;
        isB1Floor = true;
      } else {
        is2Floor = false;
        isB1Floor = false;
      }
    }
    if (keyword != '') {
      final List<String> bookList = BookPlaceUtils().getData(
        int.parse(keyword),
        keyword,
        floor,
        storeIndex,
      );
      state = BookPlaceState.list(bookPlaceList: bookList);
    }
  }

  void selectCategory(int index) {
    if (storeIndex == index) {
      storeIndex = 100;
      final List<String> bookList = BookPlaceUtils().getData(
        int.parse(keyword),
        keyword,
        storeFloor,
        100,
      );
      state = BookPlaceState.list(bookPlaceList: bookList);
    } else {
      storeIndex = 100;
      storeIndex = index;
      if (index == 0) {
        //就職資格
        final List<String> bookList = BookPlaceUtils().getData(
          int.parse(keyword),
          keyword,
          2,
          index,
        );
        state = BookPlaceState.list(bookPlaceList: bookList);
        return;
      }
      if (index == 1) {
        //学習支援
        final List<String> bookList = BookPlaceUtils().getData(
          int.parse(keyword),
          keyword,
          2,
          index,
        );
        state = BookPlaceState.list(bookPlaceList: bookList);
        return;
      }
      if (index == 2) {
        //年間白書
        final List<String> bookList = BookPlaceUtils().getData(
          int.parse(keyword),
          keyword,
          2,
          index,
        );
        state = BookPlaceState.list(bookPlaceList: bookList);
        return;
      }
      if (index == 3) {
        //参考図書
        final List<String> bookList = BookPlaceUtils().getData(
          int.parse(keyword),
          keyword,
          2,
          index,
        );
        state = BookPlaceState.list(bookPlaceList: bookList);
        return;
      }

      if (index == 4) {
        // 日蓮宗
        final List<String> bookList = BookPlaceUtils().getData(
          int.parse(keyword),
          keyword,
          1,
          index,
        );
        state = BookPlaceState.list(bookPlaceList: bookList);
        return;
      }
      if (index == 5) {
        //大型本
        final List<String> bookList = BookPlaceUtils().getData(
          int.parse(keyword),
          keyword,
          1,
          index,
        );
        state = BookPlaceState.list(bookPlaceList: bookList);
        return;
      }
    }
  }
}
