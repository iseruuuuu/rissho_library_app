import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rissho_library_app/ui/book/book_screen.dart';
import 'package:rissho_library_app/ui/book_search/book_search_screen.dart';
import 'package:rissho_library_app/ui/home/home_screen.dart';
import 'package:rissho_library_app/ui/setting/setting_screen.dart';

import 'tab_provider.dart';

class TabScreen extends ConsumerWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(selectedIndexProvider);
    return Scaffold(
      body: [
        const HomeScreen(),
        const BookScreen(),
        const BookSearchScreen(),
        const SettingScreen(),
      ][selectedIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(width: 0, color: Colors.black),
          ),
        ),
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          iconSize: 30,
          currentIndex: selectedIndex,
          onTap: (index) {
            ref.read(selectedIndexProvider.notifier).state = index;
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'ホーム',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: '図書館案内',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '図書検索',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: '設定',
            ),
          ],
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
