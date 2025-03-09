import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../configs/themes/app_color.dart';
import '../widgets/app_bar_home.dart';
import '../widgets/challenge_card.dart';
import '../widgets/menu_home.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: AppColors.background,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              AppBarHome(),
              SizedBox(height: 18),
              ChallengeCard(),
              SizedBox(height: 16),
              MenuHome(),
            ],
          ),
        ),
      ),
    );
  }
}
