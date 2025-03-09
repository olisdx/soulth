import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

import '../../../configs/themes/app_color.dart';
import '../../../configs/themes/app_font.dart';

class MenuHome extends StatelessWidget {
  const MenuHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text("Feeling Today", style: Typograph.subtitle16),
        ),

        SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16),
          scrollDirection: Axis.horizontal,
          child: Row(
            spacing: 12,
            children: [
              _MenuCard(color: AppColors.cyan, icon: TablerIcons.calendar),
              _MenuCard(color: AppColors.primaryShade, icon: TablerIcons.heart),
              _MenuCard(color: AppColors.sageGreen, icon: TablerIcons.nurse),
              _MenuCard(color: AppColors.paleLilac, icon: TablerIcons.moon),
              _MenuCard(
                color: AppColors.lightYellow,
                icon: TablerIcons.messages,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _MenuCard extends StatelessWidget {
  const _MenuCard({required this.color, required this.icon});

  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Container(
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        child: Icon(
          icon,
          color: AppColors.black.withValues(alpha: 0.7),
          size: 38,
        ),
      ),
    );
  }
}
