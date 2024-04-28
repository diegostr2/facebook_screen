import 'package:facebook_screen/facebook_ui/widgets/publication_item.dart';
import 'package:facebook_screen/facebook_ui/widgets/stories.dart';
import 'package:facebook_screen/models/publications.dart';

import 'widgets/quick_actions.dart';
import 'package:facebook_screen/facebook_ui/widgets/whats_on_your_maind.dart';
import 'package:facebook_screen/icons/custom_icons.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'widgets/circle_button.dart';

class FacebookUi extends StatelessWidget {
  const FacebookUi({super.key});

  @override
  Widget build(BuildContext context) {
    final faker = Faker();
    final publications = <Publication>[];
    for (int i = 0; i < 50; i++) {
      final random = faker.randomGenerator;
      const reactions = Reaction.values;
      final reactionIndex = random.integer(Reaction.values.length - 1);

      final publication = Publication(
        user: User(
          avatar: faker.image.image(),
          userName: faker.person.name(),
        ),
        createdAt: faker.date.dateTime(),
        commentsCount: random.integer(50000),
        title: faker.lorem.sentence(),
        imageUrl: faker.image.image(),
        sharesCount: random.integer(50000),
        currentUserReaction: reactions[reactionIndex],
      );
      publications.add(publication);
    }
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 150,
        leading: SvgPicture.asset(
          'assets/logos/facebook.svg',
          // ignore: deprecated_member_use
          color: Colors.blueAccent,
          width: 150,
        ),
        actions: const [
          CircleButton(
            color: Colors.grey,
            iconData: CustomIcons.search,
          ),
          SizedBox(
            width: 18,
          ),
          CircleButton(
            color: Color(0xffFB7171),
            iconData: CustomIcons.bell,
          ),
          SizedBox(
            width: 18,
          ),
          CircleButton(
            color: Colors.lightBlue,
            iconData: CustomIcons.user_friends,
            showBadge: true,
          ),
          SizedBox(
            width: 18,
          ),
          CircleButton(
            color: Color(0xff2880d4),
            iconData: CustomIcons.messenger,
          ),
          SizedBox(
            width: 18,
          )
        ],
      ),
      body: ListView(
        children:  [
          const SizedBox(height: 10),
          const WhatsOnYourMaind(),
          const SizedBox(height: 30),
          const QuickActions(),
          const SizedBox(height: 30),
          const Stories(),
          const SizedBox(height: 20),
          ListView.builder(
            shrinkWrap: true,
            itemBuilder: (_,index)=>PublicationItem(
              publication: publications[index],
              ),
            itemCount: publications.length,),
        ],
      ),
    );
  }
}
