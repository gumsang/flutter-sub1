import 'package:flutter/material.dart';

class YoutubeDetailScreen extends StatelessWidget {
  const YoutubeDetailScreen(this.myPly, {Key? key}) : super(key: key);

  final myPly;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(myPly.title),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.network(
                myPly.imageUrl,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      myPly.title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(myPly.date),
                    const SizedBox(
                      height: 8,
                    ),

                    //********//
                    //아이콘 부분//
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 30,
                          ),
                          Column(
                            children: const [
                              Icon(Icons.thumb_up_outlined),
                              Text("1.1천"),
                            ],
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Column(
                            children: const [
                              Icon(Icons.thumb_down_outlined),
                              Text("싫어요"),
                            ],
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Column(
                            children: const [
                              Icon(Icons.reply_rounded),
                              Text("공유"),
                            ],
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Column(
                            children: const [
                              Icon(Icons.playlist_add_outlined),
                              Text("만들기"),
                            ],
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Column(
                            children: const [
                              Icon(Icons.flag_outlined),
                              Text("신고"),
                            ],
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Column(
                            children: const [
                              Icon(Icons.subscriptions_outlined),
                              Text("스크립트 표시"),
                            ],
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Column(
                            children: const [
                              Icon(Icons.download_outlined),
                              Text("오프라인 저장"),
                            ],
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      // indent: 3,
                      // endIndent: 3,
                      // color: Colors.black45,
                      thickness: 2,
                      height: 30,
                    ),

                    //ID
                    Row(
                      children: [
                        SizedBox(
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(myPly.idUrl),
                          ),
                        ),
                        const SizedBox(
                          width: 13,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                myPly.id,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                "구독자 10.8만명",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "구독",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const Divider(
                      // indent: 3,
                      // endIndent: 3,
                      // color: Colors.black45,
                      thickness: 2,
                      height: 30,
                    ),
                    const Text("댓글 206"),
                    Row(
                      children: const [
                        CircleAvatar(
                          radius: 13,
                          child: Icon(Icons.person),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Expanded(
                          child: Text(
                            "이수근이 수근수근 댓글 오버플로우 이수근이 수근수근 댓글 오버플로우 ",
                            maxLines: 1,
                            softWrap: false,
                            overflow: TextOverflow.fade,
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      // indent: 3,
                      // endIndent: 3,
                      // color: Colors.black45,
                      thickness: 7,
                      height: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
