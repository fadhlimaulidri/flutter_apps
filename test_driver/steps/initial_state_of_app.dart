import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

StepDefinitionGeneric InitialStateOfApp() {
  return and<FlutterWorld>(
    'I test the initial state of the app',
    (context) async {

    },
  );
}
