class BookPlaceUtils {
  String getBooKData(int value, int index) {
    if (index == 0) {
      return '就職資格';
    }
    if (index == 1) {
      return '学習支援コーナー';
    }
    if (index == 2) {
      return '年間白書';
    }
    if (index == 3) {
      return '参考図書';
    }

    if (value >= 0 && value < 100) {
      return '総記';
    } else if (value >= 100 && value < 200) {
      return '哲学';
    } else if (value >= 200 && value < 300) {
      return '歴史';
    } else if (value >= 300 && value < 400) {
      return "社会科学";
    } else if (value >= 400 && value < 500) {
      return "自然科学";
    } else if (value >= 500 && value < 600) {
      return "技術・工学・工業";
    } else if (value >= 600 && value < 700) {
      return "産業";
    } else if (value >= 700 && value < 800) {
      return "芸術";
    } else if (value >= 800 && value < 900) {
      return "言語";
    } else if (value >= 900 && value < 1000) {
      return "文学";
    }
    return "予期せぬエラー";
  }

  String getDetailBookData(String newValue, int floor, int index) {
    var value = int.parse(newValue);
    if (floor == 3) {
      return '雑誌';
    }
    if (floor == 2) {
      if (newValue == '080') {
        return 'ビジネス';
      }
      if (index == 0) {
        return '就職資格';
      }
      if (value >= 378 && value < 389) {
        return '多読図書';
      }
      if (index == 1) {
        return '学習支援コーナー';
      }
      if (index == 2) {
        return '年間白書';
      }
      if (index == 3) {
        return '参考図書';
      }
    }
    if (floor == 1) {
      if (newValue == '080') {
        return '文庫・新書';
      }
      if (value >= 100 && value < 110) {
        return '哲学';
      } else if (value >= 110 && value < 120) {
        return '哲学各論';
      } else if (value >= 120 && value < 130) {
        return '東洋思想';
      } else if (value >= 130 && value < 140) {
        return '西洋哲学';
      } else if (value >= 140 && value < 150) {
        return '心理学';
      } else if (value >= 150 && value < 160) {
        return '倫理学';
      } else if (value >= 160 && value < 170) {
        return '宗教';
      } else if (value >= 170 && value < 180) {
        return '神道';
      } else if (value >= 180 && value < 190) {
        return '仏教';
      } else if (value >= 190 && value < 200) {
        return 'キリスト教';
      }
    }
    if (index == 4) {
      return '日蓮宗';
    }
    if (floor == 0) {
      if (index == 0) {
        return '大型本';
      }
      if (value >= 900 && value < 910) {
        return '文学';
      }
      if (value >= 910 && value < 920) {
        return '日本文学';
      }
      if (value >= 920 && value < 930) {
        return '中国文学・東洋文学';
      }
      if (value >= 930 && value < 940) {
        return '英米文学';
      }
      if (value >= 940 && value < 950) {
        return 'ドイツ文学';
      }
      if (value >= 950 && value < 960) {
        return 'フランス文学';
      }
      if (value >= 960 && value < 970) {
        return 'スペイン文学';
      }
      if (value >= 970 && value < 980) {
        return 'イタリア文学';
      }
      if (value >= 980 && value < 990) {
        return 'ロシア文学';
      }
      if (value >= 990 && value < 1000) {
        return 'その他の諸文学';
      }
      if (value >= 800 && value < 810) {
        return '言語';
      }
      if (value >= 810 && value < 820) {
        return '日本語';
      }
      if (value >= 820 && value < 830) {
        return '中国語・東洋の諸言語';
      }
      if (value >= 830 && value < 840) {
        return '英語';
      }
      if (value >= 840 && value < 850) {
        return 'ドイツ語';
      }
      if (value >= 850 && value < 860) {
        return 'フランス語';
      }
      if (value >= 860 && value < 870) {
        return 'スペイン語';
      }
      if (value >= 870 && value < 880) {
        return 'イタリア語';
      }
      if (value >= 880 && value < 890) {
        return 'ロシア語';
      }
      if (value >= 890 && value < 900) {
        return 'その他の諸言語';
      }
      if (value >= 700 && value < 710) {
        return '芸術';
      }
      if (value >= 710 && value < 720) {
        return '彫刻';
      }
      if (value >= 720 && value < 730) {
        return '絵画・書道';
      }
      if (value >= 730 && value < 740) {
        return '版画';
      }
      if (value >= 740 && value < 750) {
        return '写真術・印刷';
      }
      if (value >= 750 && value < 760) {
        return '工芸';
      }
      if (value >= 760 && value < 770) {
        return '音楽・舞踊';
      }
      if (value >= 770 && value < 780) {
        return '演劇・映画';
      }
      if (value >= 780 && value < 790) {
        return 'スポーツ・体育';
      }
      if (value >= 790 && value < 800) {
        return '諸芸・娯楽';
      }
      if (value >= 600 && value < 610) {
        return '産業';
      }
      if (value >= 610 && value < 620) {
        return '農業・農学';
      }
      if (value >= 620 && value < 630) {
        return '園芸・造園';
      }
      if (value >= 630 && value < 640) {
        return '蚕糸業';
      }
      if (value >= 640 && value < 650) {
        return '畜産業・獣医学';
      }
      if (value >= 650 && value < 660) {
        return '林業';
      }
      if (value >= 660 && value < 670) {
        return '水産業';
      }
      if (value >= 670 && value < 680) {
        return '商業';
      }
      if (value >= 680 && value < 690) {
        return '運輸・交通';
      }
      if (value >= 690 && value < 700) {
        return '通信事業';
      }
      if (value >= 500 && value < 510) {
        return '技術・工学・工業';
      }
      if (value >= 510 && value < 520) {
        return '建設工学・土木工学';
      }
      if (value >= 520 && value < 530) {
        return '建築学';
      }
      if (value >= 530 && value < 540) {
        return '機械工学・原子力工学';
      }
      if (value >= 540 && value < 550) {
        return '電気工学・電子工学';
      }
      if (value >= 550 && value < 560) {
        return '海洋工学・船舶工学・兵器';
      }
      if (value >= 560 && value < 570) {
        return '金属工学・鉱山工学';
      }
      if (value >= 570 && value < 580) {
        return '化学工業';
      }
      if (value >= 580 && value < 590) {
        return '製造工業';
      }
      if (value >= 590 && value < 600) {
        return '家政学・生活科学';
      }
      if (value >= 400 && value < 410) {
        return '自然科学';
      }
      if (value >= 410 && value < 420) {
        return '数学';
      }
      if (value >= 420 && value < 430) {
        return '物理学';
      }
      if (value >= 430 && value < 440) {
        return '化学';
      }
      if (value >= 440 && value < 450) {
        return '天文学・宇宙科学';
      }
      if (value >= 450 && value < 460) {
        return '地球科学・地学・地質学';
      }
      if (value >= 460 && value < 470) {
        return '生物科学・一般生物学';
      }
      if (value >= 470 && value < 480) {
        return '植物学';
      }
      if (value >= 480 && value < 490) {
        return '動物学';
      }
      if (value >= 490 && value < 500) {
        return '医学・薬学';
      }
      if (value >= 400 && value < 410) {
        return '自然科学';
      }
      if (value >= 400 && value < 410) {
        return '自然科学';
      }
      if (value >= 300 && value < 310) {
        return '社会科学';
      }
      if (value >= 310 && value < 320) {
        return '政治';
      }
      if (value >= 320 && value < 330) {
        return '法律';
      }
      if (value >= 330 && value < 340) {
        return '経済';
      }
      if (value >= 340 && value < 350) {
        return '財政';
      }
      if (value >= 350 && value < 360) {
        return '統計';
      }
      if (value >= 360 && value < 370) {
        return '社会';
      }
      if (value >= 370 && value < 380) {
        return '教育';
      }
      if (value >= 380 && value < 390) {
        return '風俗週間・民俗学';
      }
      if (value >= 390 && value < 400) {
        return '国防・軍事';
      }
      if (value >= 200 && value < 210) {
        return '歴史';
      }
      if (value >= 210 && value < 220) {
        return '日本史';
      }
      if (value >= 220 && value < 230) {
        return 'アジア史・東洋史';
      }
      if (value >= 230 && value < 240) {
        return 'ヨーロッパ史・西洋史';
      }
      if (value >= 240 && value < 250) {
        return 'アフリカ史';
      }
      if (value >= 250 && value < 260) {
        return '北アメリカ史';
      }
      if (value >= 260 && value < 270) {
        return '南アメリカ史';
      }
      if (value >= 270 && value < 280) {
        return 'オセアニア史';
      }
      if (value >= 280 && value < 290) {
        return '伝記';
      }
      if (value >= 290 && value < 300) {
        return '地理・地誌・紀行';
      }
    }
    return "予期せぬエラー";
  }

  String getPlaceImage(String newValue, int floor, int index) {
    var value = int.parse(newValue);
    if (floor == 3) {
      return 'assets/places/3/1.png';
    }
    if (floor == 2) {
      //ビジネス
      if (newValue == '080') {
        return 'assets/places/2/6.png';
      }
      //就職資格
      if (index == 0) {
        return 'assets/places/2/1.png';
      }
      //多読図書
      if (value >= 378 && value < 389) {
        return 'assets/places/2/2.png';
      }
      //学習支援コーナー
      if (index == 1) {
        return 'assets/places/2/3.png';
      }
      //年間白書
      if (index == 2) {
        return 'assets/places/2/4.png';
      }
      //参考図書
      if (value >= 80 && value < 1000) {
        return 'assets/places/2/5.png';
      }
    }
    if (floor == 1) {
      //文庫・新書
      if (newValue == '080') {
        return 'assets/places/1/2.png';
      }
      //哲学
      if (value >= 100 && value < 200) {
        return 'assets/places/1/1.png';
      }
    }
    if (floor == 0) {
      //大型本
      if (index == 5) {
        return 'assets/places/b1/1.png';
      }
      //文学
      if (value >= 900 && value < 1000) {
        return 'assets/places/b1/2.png';
      }
      //言語
      if (value >= 800 && value < 900) {
        return 'assets/places/b1/3.png';
      }
      //芸術
      if (value >= 700 && value < 800) {
        return 'assets/places/b1/4.png';
      }
      //産業
      if (value >= 600 && value < 700) {
        return 'assets/places/b1/5.png';
      }
      //技術
      if (value >= 500 && value < 600) {
        return 'assets/places/b1/6.png';
      }
      //自然科学
      if (value >= 400 && value < 500) {
        return 'assets/places/b1/7.png';
      }
      //社会科学
      if (value >= 300 && value < 400) {
        return 'assets/places/b1/8.png';
      }
      //歴史
      if (value >= 200 && value < 300) {
        return 'assets/places/b1/9.png';
      }
    }
    return 'assets/images/no.png';
  }

  List<String> getData(int value, String stringValue, int floor, int index) {
    List<String> data = [];
    data.addAll([
      getBooKData(value, index),
      getDetailBookData(stringValue, floor, index),
      getPlaceImage(stringValue, floor, index),
    ]);
    return data;
  }
}
