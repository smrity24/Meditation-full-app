import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ChooseTopic extends StatefulWidget {
  @override
  _ChooseTopicState createState() => _ChooseTopicState();
}

class _ChooseTopicState extends State<ChooseTopic> {
  Material items(String img, String text, int color, int textColor) {
    return Material(
      color: Color(color),
      borderRadius: BorderRadius.circular(13),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: 10,
            left: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(img),
              Spacer(),
              Text(
                text,
                style: TextStyle(color: Color(textColor)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            Text(
              'What Brings you',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'to Slient Moon?',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'choose a topic to focus on:',
              style: TextStyle(
                fontSize: 17,
                color: Colors.black26,
              ),
            ),
            SizedBox(height: 5),
            Expanded(
              child: StaggeredGridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                children: [
                  InkWell(
                    onTap: () {},
                    child: items(
                      'assets/images/img 1.png',
                      "Reduce Stress",
                      0xFF8C9EFF,
                      0xFFFFFFFF,
                    ),
                  ),
                  items(
                    'assets/images/img 2.png',
                    "Improve Performance",
                    0xFFFF8A65,
                    0xFFFFFFFF,
                  ),
                  items(
                    'assets/images/img 4.png',
                    "Reduce Anxiety",
                    0xFFFFD180,
                    0xFF000000,
                  ),
                  items(
                    'assets/images/img 3.png',
                    "Increase \nHappiness",
                    0xFFFF9E80,
                    0xFF000000,
                  ),
                  items(
                    'assets/images/img 5.png',
                    "Personal \nGrowth",
                    0xFFA5D6A7,
                    0xFFFFFFFF,
                  ),
                  items(
                    'assets/images/img 6.png',
                    "Better Sleep",
                    0xFF263238,
                    0xFFFFFFFF,
                  ),
                  items(
                    'assets/images/img 8.png',
                    "",
                    0xFFCE93D8,
                    0xFFFFFFFF,
                  ),
                  items(
                    'assets/images/img 7.png',
                    "",
                    0xFF8C9EFF,
                    0xFFFFFFFF,
                  ),
                ],
                staggeredTiles: [
                  StaggeredTile.extent(1, 150),
                  StaggeredTile.extent(1, 130),
                  StaggeredTile.extent(1, 150),
                  StaggeredTile.extent(1, 130),
                  StaggeredTile.extent(1, 150),
                  StaggeredTile.extent(1, 130),
                  StaggeredTile.extent(1, 150),
                  StaggeredTile.extent(1, 150),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
