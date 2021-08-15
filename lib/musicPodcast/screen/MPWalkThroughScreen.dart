import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:audio_book/main/utils/AppWidget.dart';
import 'package:audio_book/musicPodcast/screen/MPSignInAndSignUpScreen.dart';
import 'package:audio_book/musicPodcast/screen/MPTabBarSignInScreen.dart';
import 'package:audio_book/musicPodcast/utils/MPColors.dart';
import 'package:audio_book/musicPodcast/utils/MPImages.dart';

class MPWalkThroughScreen extends StatefulWidget {
  static String tag = '/MPWalkThroughScreen';

  @override
  MPWalkThroughScreenState createState() => MPWalkThroughScreenState();
}

class MPWalkThroughScreenState extends State<MPWalkThroughScreen> with AfterLayoutMixin<MPWalkThroughScreen> {
  PageController pageController = PageController();
  List<Widget> pages = [];
  double? currentPage = 0;

  final _kCurve = Curves.ease;

  @override
  void initState() {
    super.initState();

    init();
  }

  Future<void> init() async {
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page;
      });
    });
  }

  @override
  void afterFirstLayout(BuildContext context) {
    pages = [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          commonCacheImageWidget("https://img.etimg.com/thumb/msid-49086682,width-1200,height-900,imgsize-62458,overlay-etpanache/photo.jpg", 200, width: 200, fit: BoxFit.cover).cornerRadiusWithClipRRect(100),
          16.height,
          Text('Enjoy Audio Books In Real Time', style: boldTextStyle(color: Colors.white)),
          8.height,
          Text('Walkthrough content here', style: secondaryTextStyle(color: Colors.white), textAlign: TextAlign.center)
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          commonCacheImageWidget("https://www.torontopubliclibrary.ca/content/books-video-music/books/audio-books/images/audiobooks-hero.jpg", 200, width: 200, fit: BoxFit.cover).cornerRadiusWithClipRRect(100),
          16.height,
          Text('Create Your Own Audio Book List', style: boldTextStyle(color: Colors.white)),
          8.height,
          Text('Walkthrough content here', style: secondaryTextStyle(color: Colors.white), textAlign: TextAlign.center)
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          commonCacheImageWidget("https://images.ctfassets.net/p0qf7j048i0q/13714F0261C84ECF8A57E9ED7222F2A2/c013a3b23df73a18c11209429f747497/149283251.jpg", 200, width: 200, fit: BoxFit.cover).cornerRadiusWithClipRRect(100),
          16.height,
          Text('Share your favourite books', style: boldTextStyle(color: Colors.white)),
          8.height,
          Text(
            'Walkthrough content here',
            style: secondaryTextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          )
        ],
      )
    ];
    setState(() {});
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF181B2C),
        body: Stack(
          children: [
            PageView(controller: pageController, children: pages.map((e) => e).toList()),
            16.height,
            Container(
              margin: EdgeInsets.all(8),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  "SKIP",
                  style: boldTextStyle(color: Colors.white, size: 12),
                ).paddingAll(8).onTap(() {
                  finish(context);
                  MPTabBarSignInScreen(0).launch(context);
                }),
              ),
            ),
            Positioned(
              bottom: 100,
              left: 0,
              right: 0,
              child: DotIndicator(
                pageController: pageController,
                pages: pages,
                unselectedIndicatorColor: Colors.white,
                dotSize: 5,
                indicatorColor: mpAppButtonColor,
                onDotTap: (s) {
                  pageController.animateToPage(s, duration: Duration(milliseconds: 5), curve: Curves.bounceIn);
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: AppButton(
                color: mpAppButtonColor,
                width: context.width(),
                child: Text(currentPage == 2 ? 'Get Started' : 'Next', style: boldTextStyle(color: Colors.white)),
                onTap: () {
                  pageController.nextPage(duration: Duration(milliseconds: 500), curve: _kCurve);

                  if (currentPage == 2) {
                    finish(context);
                    MPSignInAndSignUpScreen().launch(context);
                  }
                },
              ).paddingOnly(left: 16, right: 16, bottom: 16),
            )
          ],
        ),
      ),
    );
  }
}
