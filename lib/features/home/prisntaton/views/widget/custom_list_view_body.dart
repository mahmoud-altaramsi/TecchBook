import 'package:flutter/material.dart';

class CustomListViweBody extends StatelessWidget {
  const CustomListViweBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.red,
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  "https://scontent.fcai19-4.fna.fbcdn.net/v/t39.30808-6/419879454_122105384696180455_3208464802904450182_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=5f2048&_nc_ohc=HHatEzu4oWIQ7kNvgF7wFxb&_nc_ht=scontent.fcai19-4.fna&oh=00_AYAVkg53QpbrLNG9bH3ddwQaYVtDA4blGI3y6M8MwNuLWQ&oe=664FCD98"),
            ),
          ),
        ),
      ),
    );
  }
}
