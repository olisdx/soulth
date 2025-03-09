import 'package:device_preview_plus/device_preview_plus.dart';
import 'package:flutter/material.dart';

import 'configs/themes/app_theme.dart';
import 'core/router/app_router.dart';

enum DebugMode { debugOnly, debugLayout }

void main() {
  runApp(MyApp());

  BuildConfig.init();
}

class BuildConfig {
  BuildConfig._(this.debugMode);

  final DebugMode debugMode;

  static late BuildConfig _instance;

  static void init() {
    const strDebugMode = String.fromEnvironment("DEBUG_MODE");
    const debugMode =
        (strDebugMode == "DEBUG_LAYOUT")
            ? DebugMode.debugLayout
            : DebugMode.debugOnly;
    _instance = BuildConfig._(debugMode);
  }

  static bool isDebugLayout() => _instance.debugMode == DebugMode.debugLayout;
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return DevicePreview(
      enabled: BuildConfig.isDebugLayout(),

      builder: (context) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: "Soulth",
          theme: AppTheme.light,
          routerConfig: _appRouter.config(),
        );
      },
    );
  }
}
