import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_place_state.freezed.dart';

@freezed
class BookPlaceState with _$BookPlaceState {
  const factory BookPlaceState.firstLoading() = BookPlaceStateFirstLoading;

  const factory BookPlaceState.empty() = BookPlaceStateEmpty;

  const factory BookPlaceState.list({
    required List<String> bookPlaceList,
  }) = BookPlaceStateList;

  const BookPlaceState._();

  bool get isLoading {
    return when(
      firstLoading: () => true,
      empty: () => false,
      list: (loadState) => loadState != [],
    );
  }
}
