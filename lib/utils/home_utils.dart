import 'package:intl/intl.dart';

class HomeUtils {
  String getDay() {
    DateTime now = DateTime.now();
    DateFormat outputFormat = DateFormat('yyyy年MM月dd日(EE)', 'ja_JP');
    String date = outputFormat.format(now);
    return date;
  }

  String getOpenTime() {
    DateTime now = DateTime.now();
    DateFormat outputFormat = DateFormat('EE', 'ja_JP');
    String date = outputFormat.format(now);
    //TODO 祝日を考慮する。
    switch (date) {
      case '月':
        return '8：30～22：00';
      case '火':
        return '8：30～22：00';
      case '水':
        return '8：30～22：00';
      case '木':
        return '8：30～22：00';
      case '金':
        return '8：30～22：00';
      case '土':
        return '8：30～21：30';
      case '日':
        return '休館';
    }

    return date;
  }
}
