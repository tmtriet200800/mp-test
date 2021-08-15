import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:audio_book/main/utils/AppWidget.dart';
import 'package:audio_book/musicPodcast/models/MusicModel.dart';
import 'package:audio_book/musicPodcast/screen/MPOurChoicesScreen.dart';
import 'package:audio_book/musicPodcast/screen/MPSearchScreen.dart';
import 'package:audio_book/musicPodcast/utils/MPColors.dart';
import 'package:audio_book/musicPodcast/utils/MPDataGenerator.dart';
import 'package:audio_book/musicPodcast/utils/MPImages.dart';
import 'package:audio_book/musicPodcast/utils/MPWidget.dart';

// ignore: must_be_immutable
class MPProfileScreen extends StatefulWidget {
  bool? isTab = false;

  MPProfileScreen({this.isTab});

  static String tag = '/ MPProfileScreen';

  @override
  MPProfileScreenState createState() => MPProfileScreenState();
}

class MPProfileScreenState extends State<MPProfileScreen> {
  List<MusicModel> profileGridList = getProfileGridList();

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: widget.isTab!
            ? AppBar(
                backgroundColor: mpAppBackGroundColor,
                title: Text("Profile", style: boldTextStyle(color: white.withOpacity(0.9), size: 18)),
                centerTitle: true,
                automaticallyImplyLeading: true,
                iconTheme: IconThemeData(color: white.withOpacity(0.9)),
                elevation: 0.0,
                actions: [
                  searchIconWidget(onPressed: () {
                    MPSearchScreen().launch(context);
                  }),
                ],
              )
            : null,
        backgroundColor: mpAppBackGroundColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              16.height,
              commonCacheImageWidget(mpProfile, 100, width: 100, fit: BoxFit.cover).cornerRadiusWithClipRRect(50).center(),
              16.height,
              Text('SVS Academy', style: boldTextStyle(color: Colors.white)).center(),
              32.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text("35", style: boldTextStyle(color: Colors.white)),
                      Text('PlayList', style: secondaryTextStyle(color: Colors.grey)),
                    ],
                  ),
                  Container(height: 50, child: VerticalDivider(color: Colors.grey)),
                  Column(
                    children: [
                      Text("158", style: boldTextStyle(color: Colors.white)),
                      Text('Likes', style: secondaryTextStyle(color: Colors.grey)),
                    ],
                  ),
                  Container(height: 50, child: VerticalDivider(color: Colors.grey)),
                  Column(
                    children: [
                      Text("501", style: boldTextStyle(color: Colors.white)),
                      Text('Following', style: secondaryTextStyle(color: Colors.grey)),
                    ],
                  ),
                ],
              ).paddingOnly(left: 16, right: 16),
              24.height,
              Text('Followed Authors', style: boldTextStyle(color: Colors.white, size: 16)).paddingOnly(left: 16),
              8.height,
              Wrap(
                runSpacing: 4,
                runAlignment: WrapAlignment.spaceEvenly,
                children: List.generate(
                  profileGridList.length,
                  (index) {
                    MusicModel data = profileGridList[index];

                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        children: [
                          commonCacheImageWidget(
                            data.img,
                            context.height() / 6.7,
                            width: context.width() * 0.45,
                            fit: BoxFit.cover,
                          ).cornerRadiusWithClipRRect(10).onTap(() {
                            MPOurChoicesScreen().launch(context);
                          }),
                          8.height,
                          Text(data.title!, style: secondaryTextStyle(color: Colors.white)),
                          8.height,
                        ],
                      ),
                    );
                  },
                ),
              ).paddingOnly(bottom: 60),
              24.height,
            ],
          ),
        ),
      ),
    );
  }
}
