import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:soulth/core/router/app_router.gr.dart';

@RoutePage()
class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => context.router.push(LoginRoute()),
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}
