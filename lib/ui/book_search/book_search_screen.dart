import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../component/app_icon_button.dart';
import 'book_search_provider.dart';

class BookSearchScreen extends ConsumerWidget {
  const BookSearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final webView = ref.watch(webViewProvider.notifier);
    final isLoading = ref.watch(isLoadingProvider);
    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFC),
      appBar: PreferredSize(
        preferredSize: Size.zero,
        child: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFFFCFCFC),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: InAppWebView(
                  onWebViewCreated: (controller) {
                    webView.state = controller;
                  },
                  onLoadStart: (controller, url) {
                    ref.read(isLoadingProvider.notifier).setLoading(true);
                  },
                  onLoadStop: (controller, url) {
                    ref.read(isLoadingProvider.notifier).setLoading(false);
                  },
                  initialUrlRequest: URLRequest(
                      url: Uri.parse('https://www.ris.ac.jp/library/')),
                  initialOptions: InAppWebViewGroupOptions(
                    crossPlatform: InAppWebViewOptions(
                      transparentBackground: true,
                      useShouldOverrideUrlLoading: true,
                      clearCache: true,
                      cacheEnabled: false,
                    ),
                  ),
                  shouldOverrideUrlLoading:
                      (controller, navigationAction) async {
                    var uri = navigationAction.request.url!;
                    if (![
                      "http",
                      "https",
                      "file",
                      "chrome",
                      "data",
                      "javascript",
                      "about"
                    ].contains(uri.scheme)) {
                      if (await canLaunchUrl(uri)) {
                        await launchUrl(
                          uri,
                        );
                        return NavigationActionPolicy.CANCEL;
                      }
                    }
                    return NavigationActionPolicy.ALLOW;
                  },
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(width: 0, color: Colors.black),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AppIconButton(
                      stateController: webView,
                      future: webView.state?.canGoBack() ?? Future.value(false),
                      icon: Icons.arrow_back_ios_new,
                    ),
                    AppIconButton(
                      stateController: webView,
                      future:
                          webView.state?.canGoForward() ?? Future.value(false),
                      icon: Icons.arrow_forward_ios,
                    ),
                    IconButton(
                      onPressed: () => webView.state!.reload(),
                      icon: const Icon(Icons.refresh),
                    ),
                    IconButton(
                      onPressed: () => webView.state!.loadUrl(
                        urlRequest: URLRequest(
                            url: Uri.parse('https://www.ris.ac.jp/library/')),
                      ),
                      icon: const Icon(Icons.home),
                    ),
                  ],
                ),
              )
            ],
          ),
          if (isLoading)
            const Center(
              child: SizedBox(
                width: 50,
                height: 50,
                child: CircularProgressIndicator(
                  strokeWidth: 8,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
