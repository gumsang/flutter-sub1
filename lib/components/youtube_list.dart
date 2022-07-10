import 'package:flutter/material.dart';

class PlayList {
  final String title;
  final String imageUrl;
  final String date;
  final String idUrl;
  final String id;

  const PlayList(this.title, this.date, this.id, this.idUrl, this.imageUrl,
      {Key? key});
}

List<PlayList> myList = [
  PlayList(
      '[#티전드] (2시간) 수근이 김장 잘하지~^^ 개그 장인 이수근의 인간문화재 등극이 시급합니다🤣 | #신서유기8 #신서유기7',
      '조회수 1,949,215회 · 2022. 5. 15.',
      'tvN D ENT',
      'https://yt3.ggpht.com/aQq9OjYxeYTQ9F3sgkmfmv0gH1bigSr5tJLyDR11RJFa9bGxgci5Jw0Y9tDP7eNBm8AQqyx1Qi8=s176-c-k-c0x00ffffff-no-rj',
      'https://i.ytimg.com/vi/Q_TAgPgfoPk/hqdefault.jpg?sqp=-oaymwEjCNACELwBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE=&rs=AOn4CLA2ePlCc5TzkDTTkQ0JAwLlEwRGdg'),
  PlayList(
      '산책하기 좋은날엔🌿 적당히 신나는 청량 플리',
      '조회수 363,348회 · 2022. 5. 30.',
      'Blue rain',
      'https://yt3.ggpht.com/l02w3GqeGiIEt42Et0dJID8RoSTNzju-OPyFtseu839JpBL2unN3OD1l30bq7Gj5IDhbp63CYg=s176-c-k-c0x00ffffff-no-rj',
      'https://i.ytimg.com/vi/fj8ReY0HxWc/hqdefault.jpg?sqp=-oaymwEjCNACELwBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE=&rs=AOn4CLDJG9YDp1kUHQ16Lq2t0Ye94cSPug'),
  PlayList(
      '꿈에도 그리던 솔트배 레스토랑 이스탄불 본점 방문기 Nusr-Et Steakhouse Etiler, Salt Bae`s headquarters restaurant Review',
      '조회수 2,293,723회 · 최초 공개: 2022. 6. 27.',
      '육식맨 YOOXICMAN',
      'https://yt3.ggpht.com/ytc/AKedOLRJTtH-7dSBhp1E9vaiMlxYijn66zgy7gmUPMqw=s68-c-k-c0x00ffffff-no-rj',
      'https://i.ytimg.com/vi/mPm30CaCs5M/hq720.jpg?sqp=-oaymwEXCNAFEJQDSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLAGH_E8Ey-RAMGDahiA3VpQQ8oqIA'),
];

class ViewTitle extends StatelessWidget {
  final String myTitle;
  final String myDate;
  final String myId;
  final String myIdUrl;

  const ViewTitle(this.myTitle, this.myDate, this.myId, this.myIdUrl,
      {Key? key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            myTitle,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            myDate,
            style: const TextStyle(fontSize: 12),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 13,
                backgroundImage: NetworkImage(myIdUrl),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                myId,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
