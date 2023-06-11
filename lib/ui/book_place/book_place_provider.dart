import 'package:rissho_library_app/ui/book_place/book_place_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../utils/book_place_utils.dart';

part 'book_place_provider.g.dart';

@riverpod
class BookPlaceViewModel extends _$BookPlaceViewModel {
  @override
  BookPlaceState build({
    BookPlaceState initState = const BookPlaceState.empty(),
  }) {
    return initState;
  }

  void onChanged(String value) {
    if (value.isEmpty) {
      state = const BookPlaceState.empty();
      return;
    }
    state = state.map(
      firstLoading: (_) => throw AssertionError(),
      empty: (_) => const BookPlaceState.firstLoading(),
      list: (_) => const BookPlaceState.firstLoading(),
    );
    final List<String> bookList = BookPlaceUtils().getData(int.parse(value));
    state = BookPlaceState.list(bookPlaceList: bookList);
  }
}
