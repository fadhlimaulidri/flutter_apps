import 'dart:convert';
import 'dart:io';

import 'package:gherkin/gherkin.dart';
import 'package:meta/meta.dart';

class CustomDiskScreenshotOnFailedStepHook extends Hook {
  @override
  Future<void> onAfterStep(
    World world,
    String step,
    StepResult stepResult,
  ) async {
    if (stepResult.result == StepExecutionResult.fail ||
        stepResult.result == StepExecutionResult.error ||
        stepResult.result == StepExecutionResult.timeout) {
         await takeAndSaveScreenshotToDisk(world);
    }
  }

  @protected
  Future<void> takeAndSaveScreenshotToDisk(World world) async {
    final bytes = await (world as FlutterWorld).driver!.screenshot();

    final buffer = data.buffer;
  await new File("test_driver/tmp/asdasd.png").writeAsBytes(
      buffer.asUint8List(data.offsetInBytes, data.lengthInBytes,
    ),
   );
  }
}