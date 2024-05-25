import 'package:flutter/material.dart';

class CustomBookListView extends StatelessWidget {
  const CustomBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.red,
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
                "https://scontent.fcai19-4.fna.fbcdn.net/v/t39.30808-6/430612447_122129847548180455_6496186191703706656_n.jpg?_nc_cat=101&_nc_cb=99be929b-ddd1f5c1&ccb=1-7&_nc_sid=5f2048&_nc_ohc=rl-Xt0VJ1i0Q7kNvgFAKxgl&_nc_ht=scontent.fcai19-4.fna&oh=00_AYAVfcgq6MqzJ7PduJyxo3khuKllqZQu9QeNfYLnrnnuMQ&oe=6656F078"),
          ),
        ),
      ),
    );
  }
}
