import 'package:hooks_riverpod/hooks_riverpod.dart';

final bookPlaceProvider =
    StateNotifierProvider<BookPlaceNotifier, List<String>>((_) {
  return BookPlaceNotifier();
});

class BookPlaceNotifier extends StateNotifier<List<String>> {
  BookPlaceNotifier() : super([]);

  void onChanged(String value) {
    if (value.isNotEmpty) {
      state.clear();
      var newValue = int.parse(value);
      //TODO 配列番号によって状況を変える。
      if (newValue <= 100) {
        state.addAll(['3階']);
      } else if (newValue >= 100 && newValue <= 200) {
        state.addAll(['2階']);
      } else if (newValue >= 300 && newValue <= 400) {
        state.addAll(['1階']);
      } else if (newValue >= 400 && newValue <= 500) {
        state.addAll(['B1階']);
      } else {
        state.clear();
      }
    }
  }
}
