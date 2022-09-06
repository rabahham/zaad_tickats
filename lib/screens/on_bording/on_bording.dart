import 'package:buy_tickets/screens/login/zaad_tickts_login_screen.dart';

import '../../shered/components/components.dart';
import '../../shered/network/local/chach_hlepr.dart';
import '../../shered/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingModel {
  final String? image;
  final String? title;
  final String? body;
  BoardingModel({
    required this.image,
    required this.title,
    required this.body,
  });
}

class OnBordingScreen extends StatefulWidget {
  const OnBordingScreen({Key? key}) : super(key: key);

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  var boardController = PageController();

  List<BoardingModel> listBording = [
    BoardingModel(
        image: 'assets/images/onbording_1.png',
        title: 'On Board 1 Title',
        body: 'On Board 1 Body'),
    BoardingModel(
        image: 'assets/images/onbordng_2.png',
        title: 'On Board 2 Title',
        body: 'On Board 2 Body'),
    BoardingModel(
        image: 'assets/images/onbording_3.png',
        title: 'On Board 3 Title',
        body: 'On Board 3 Body'),
  ];

  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        actions: [
          TextButton(
            onPressed: () {
              onsubmited();
            },
            child: Text('skip', style: TextStyle(color: Colors.white),),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                // physics: BouncingScrollPhysics(),
                onPageChanged: (indexx) {
                  if (indexx == listBording.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                  } else {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
                controller: boardController,
                itemBuilder: (context, index) =>
                    buildBoardingItem(listBording[index]),
                itemCount: listBording.length,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              children: [
                SmoothPageIndicator(
                  controller: boardController,
                  count: listBording.length,
                  effect: ExpandingDotsEffect(
                    dotColor: Colors.grey,
                    activeDotColor: defaultColor,
                    dotHeight: 4,
                    expansionFactor: 4,
                    dotWidth: 10,
                    spacing: 5.0,
                  ),
                ),
                Spacer(),
                FloatingActionButton(
                  backgroundColor: Colors.purple,
                  onPressed: () {
                    if (isLast) {
                      onsubmited();
                    } else {
                      boardController.nextPage(
                        duration: Duration(
                          milliseconds: 750,
                        ),
                        curve: Curves.fastLinearToSlowEaseIn,
                      );
                    }
                  },
                  child: Icon(Icons.arrow_forward_ios),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildBoardingItem(BoardingModel model) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image(
              image: AssetImage('${model.image}'),
            ),
          ),
          Text(
            '${model.title}',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            '${model.body}',
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      );

  void onsubmited() {
    // CacheHelper.saveData(key: 'onBoarding', value: true).then((value) {
    if (listBording.length > 2) {
      navigatToRomplace(
        context,
        ZaadTicktsLoginScreen(),
      );
    }
    // }
    // );
  }
}
