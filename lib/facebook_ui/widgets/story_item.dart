

import 'package:facebook_screen/models/story.dart';
import 'package:flutter/material.dart';

import 'avatar.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({
    super.key,
    required this.story, 
    // ignore: non_constant_identifier_names
    required this.IsFirst,
  });

  final Story story;
  // ignore: non_constant_identifier_names
  final bool IsFirst;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 80,
      margin: EdgeInsets.only(
        left: IsFirst ? 20 : 0,
        right: 10,
      ),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 20,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(story.bg), fit: BoxFit.cover)),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Avatar(
                    zise: 40,
                    borderWith: 3,
                    asset: story.avatar,
                  ),
                )
              ],
            ),
          ),
          Text(
            story.username,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
