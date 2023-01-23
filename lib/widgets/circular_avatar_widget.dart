import 'package:flutter/material.dart';

class CircularAvatarWidget extends StatelessWidget {

  final Function onTap;

  const CircularAvatarWidget({
    super.key, 
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap(),
      child: const CircleAvatar(
        backgroundImage: AssetImage("assets/images/image_circular_avatar.png"),
      ),
    );
  }
}