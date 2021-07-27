import 'dart:convert';

import 'package:gherkin/gherkin.dart';
import 'package:meta/meta.dart';

class ScreenshotOnFailedStepHook extends Hook {
  @override
  Future<void> onAfterStep(
    World world,
    String step,
    StepResult stepResult,
  ) async {
    print("***************************************");
  }

  // @protected
  // Future<String> takeScreenshot(World world) async {
  //   final bytes = await (world as FlutterWorld).driver!.screenshot();

  //   return base64Encode(bytes);
  // }
}
