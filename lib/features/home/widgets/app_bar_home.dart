import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

import '../../../configs/themes/app_color.dart';
import '../../../configs/themes/app_font.dart';
import '../../../gen/assets.gen.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 10, right: 16),
      child: Row(
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: Assets.images.foto.image(width: 54),
          ),
          SizedBox(width: 10),
          RichText(
            text: TextSpan(
              text: "Hello, ",
              style: Typograph.subtitle18,
              children: [TextSpan(text: "Ana", style: Typograph.regular18)],
            ),
          ),
          Spacer(),
          Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Icon(TablerIcons.bell, color: AppColors.black),
          ),
        ],
      ),
    );
  }
}
