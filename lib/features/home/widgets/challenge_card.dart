import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

import '../../../configs/themes/app_color.dart';
import '../../../configs/themes/app_font.dart';
import '../../../gen/assets.gen.dart';

class ChallengeCard extends StatelessWidget {
  const ChallengeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: AppColors.primaryShade,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: AppColors.primary,
                  ),
                  child: Row(
                    spacing: 6,
                    children: [
                      Icon(TablerIcons.trophy_filled, color: Colors.white),
                      Text(
                        "Training",
                        style: Typograph.subtitle16.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Training Your\nBody",
                  style: Typograph.subtitle24.copyWith(height: 1),
                ),
                Row(
                  spacing: 8,
                  children: [
                    Text("Get Started", style: Typograph.subtitle16),
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.red, width: 1.5),
                      ),
                      child: Icon(TablerIcons.player_play_filled),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Assets.images.sportPerson.image(width: 80, fit: BoxFit.cover),
        ],
      ),
    );
  }
}
