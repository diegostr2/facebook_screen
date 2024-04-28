
import 'package:facebook_screen/facebook_ui/widgets/avatar.dart';
import 'package:flutter/material.dart';

class WhatsOnYourMaind extends StatelessWidget {
  const WhatsOnYourMaind({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Avatar(
            zise: 50, 
            asset: 'assets/users/6.jpg',
            
          ),
          SizedBox(width: 20,),
          Flexible(
            child: Text('Whats on your maind?, Diego',
            style: TextStyle(color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}
