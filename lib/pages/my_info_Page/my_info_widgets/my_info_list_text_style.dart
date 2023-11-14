import 'package:flutter/material.dart';
import 'package:flutter_test_project/models/test_model.dart';
import 'package:flutter_test_project/pages/music_list_page/music_list_page.dart';
import 'package:flutter_test_project/widgets/app_text.dart';

import '../../music_list_page/music_list_page.dart';

class myInfoListTextStyle extends StatelessWidget {
  final List<String> sing;
  final List<String> song;
  final List<int> randomNumberlist;
  final List<TestModel> info;

  const myInfoListTextStyle(
      {super.key,
      required this.song,
      required this.sing,
      required this.randomNumberlist,
      required this.info});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15),
      height: 700,
      width: double.maxFinite,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 8,
        itemBuilder: (_, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => MusicListPage(info: info[index]),
                ),
              );
            },
            child: Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            randomNumberlist[index] == 1 ? 100 : 10),
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage(randomNumberlist[index] == 1
                              ? "assets/all/" + song[index]
                              : "assets/sing/" + sing[index]),
                          fit: BoxFit.cover,
                        )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AppText(
                                  text: "타이틀이 들어감".toString(),
                                  color: Colors.white,
                                  size: 16,
                                ),
                                AppText(
                                  text: "리스트 또는 가수이름",
                                  color: Colors.grey,
                                  size: 15,
                                )
                              ],
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.more_vert_sharp,
                                color: Colors.white,
                                size: 30,
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
