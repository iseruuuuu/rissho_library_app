import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final webViewProvider = StateProvider<InAppWebViewController?>(
  (_) => null,
);

final isLoadingProvider = StateNotifierProvider<IsLoadingNotifier, bool>(
  (_) => IsLoadingNotifier(),
);

class IsLoadingNotifier extends StateNotifier<bool> {
  IsLoadingNotifier() : super(false);

  void setLoading(bool isLoading) {
    state = isLoading;
  }
}
