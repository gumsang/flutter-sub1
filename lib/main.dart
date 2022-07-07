import 'package:flutter/material.dart';
import 'package:sub_column_row_image/youtube_main_screen.dart';

final dummyItems = [
  'http://goldshell.co.kr/web/product/big/201909/0afaa8a4d640df8bec11e5863403c4e2.jpg',
  'http://www.dorocy.co.kr/shopimages/dorocyshop/2030000004042.jpg?1642389149',
  'http://m.e-sang.co.kr/web/product/big/20191115/233261bfc05202b353eaf20b64319639.jpg',
];

final mytitle = [
  '궁댕이로 유재석 밀어내고 MC 자리 차지한 아기ㅋㅋㅋ 인생 첫 TV 출연에 잔뜩 긴장한 초딩🤣',
  '일할때 듣기좋은 발라드 추천 광고없는 노래모음 💖 하루 종일 들어도 좋은노래 BEST 100곡 💖 김범수 /임창정 /박효신/성시경/ 백지영/ 더원/태연/박명수',
  '말이 필요없는 [범죄도시2] 영화리뷰',
];
final myclickView = [
  '조회수 2,232,639회 2022. 5. 1.',
  '조회수 991,118회 최초 공개: 2022. 4. 1.',
  '조회수 6,918,471회 2022. 5. 18.',
];
final myid = [
  'tvN D ENT',
  '음악 채널',
  '우리집영화관',
];
final myidImageUrl = [
  'https://yt3.ggpht.com/aQq9OjYxeYTQ9F3sgkmfmv0gH1bigSr5tJLyDR11RJFa9bGxgci5Jw0Y9tDP7eNBm8AQqyx1Qi8=s176-c-k-c0x00ffffff-no-rj',
  'https://yt3.ggpht.com/HmpjWSVC4BSvsmzWvvrEdJRyzRUW9tKI-cPzXVe1ev_Ub3A-F2wenbs7YSypZv7JemmWDluuAIM=s176-c-k-c0x00ffffff-no-rj',
  'https://yt3.ggpht.com/ytc/AKedOLS74F0ZIk8oAu4anxD4lYm7x1Aie5Nd-iUVzs93=s176-c-k-c0x00ffffff-no-rj',
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const youtubeMainScreen(),
    );
  }
}
