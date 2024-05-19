import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/assets.dart';

class CostumAppBar extends StatelessWidget {
  const CostumAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 15, left: 15, right: 15),
      child: Row(
        children: [
          Image.asset(
            AssetsMultyApp.logo,
            height: 18,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
