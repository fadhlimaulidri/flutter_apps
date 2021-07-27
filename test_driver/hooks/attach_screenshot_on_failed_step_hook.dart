import 'dart:convert';

import 'package:gherkin/gherkin.dart';
import 'package:meta/meta.dart';

class AttachScreenshotOnFailedStepHook extends Hook {
  @override
  Future<void> onAfterStep(
    World world,
    String step,
    StepResult stepResult,
  ) async {
    // if (stepResult.result == StepExecutionResult.fail ||
    //     stepResult.result == StepExecutionResult.error ||
    //     stepResult.result == StepExecutionResult.timeout) {
    //     final screenshotData = await takeScreenshot(world);
    //     world.attach(screenshotData, 'image/png', step);
    // }else{
    //   final screenshotData = await takeScreenshot(world);
    //   world.attach(screenshotData, 'image/png', step);
    // }
    print("***************************************");
  }

  @protected
  Future<String> takeScreenshot(World world) async {
    final bytes = await (world as FlutterWorld).driver!.screenshot();

    return base64Encode(bytes);
  }
}
