import 'package:flutter_driver/flutter_driver.dart';

class HomePage {
  final txtCounter = find.byValueKey('counterText');
  final btnIncrement = find.byTooltip('Increment');
  final buttonAdd = find.byValueKey("add");
  final btnSubtract = find.byValueKey("subtract");
  final alertText = find.byValueKey("alert_text");
  final btnClose = find.byValueKey("close_button");

  FlutterDriver _driver;
  //Constructor
  HomePage(FlutterDriver driver) {
    this._driver = driver;
  }

  Future<String> getCounterValue() async {
    return await _driver.getText(txtCounter);
  }

  Future<void> clickBtnPlus() async {
    return await _driver.tap(btnIncrement);
  }

  Future<void> clickSubtractButton() async {
    return _driver.tap(btnSubtract);
  }
}