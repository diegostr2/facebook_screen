import 'circle_button.dart';
import '../../icons/custom_icons.dart';
import 'package:flutter/material.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            _QuickBotton(
              iconData: CustomIcons.photos,
              color: Color(0xff92BE87),
              label: 'Galery',
            ),
            SizedBox(width: 10,),
            _QuickBotton(
              iconData: CustomIcons.user_friends,
              color: Color(0xff2880d4),
              label: 'Friends',
            ),
            SizedBox(width: 10,),
            _QuickBotton(
              iconData: CustomIcons.video_camera,
              color: Color(0xffFB7171),
              label: 'Live',
            ),
          ],
        ),
      ),
    );
  }
}

class _QuickBotton extends StatelessWidget {
  const _QuickBotton({
    super.key,
    required this.iconData,
    required this.color,
    required this.label,
  });

  final IconData iconData;
  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 25),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleButton(
            color: color.withOpacity(0.6),
            iconData: iconData,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            label,
            style: TextStyle(
              color: color,
            ),
          )
        ],
      ),
    );
  }
}
