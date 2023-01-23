import 'package:app_twitter_clon_flutter/widgets/circular_avatar_widget.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25)
      ),
      elevation: 40,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                CircularAvatarWidget(
                  onTap: (){},
                ),
                const SizedBox(width: 170),
                IconButton(
                  icon: const Icon(Icons.more_vert_rounded),
                  iconSize: 30,
                  color: const Color.fromRGBO(56, 161, 243, 1),
                  onPressed: (){},
                )
              ],
            ),
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "DZuluaga",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          const SizedBox(height: 5),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "@DanielZ80720053",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.w400
              ),
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: const [
                Text(
                  "11 Siguiendo",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w400
                  ),
                ),
                SizedBox(width: 15),
                Text(
                  "0 Seguidores",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w400
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              thickness: 0.25,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}