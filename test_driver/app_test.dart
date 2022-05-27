import 'dart:async';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:glob/glob.dart';

import 'steps/tap_button_n_times_step.dart';

Future<void> main() {
  final config = FlutterTestConfiguration()
    ..features = [Glob(r"test_driver/features/**.feature")]
    ..reporters = [
      ProgressReporter(),
      TestRunSummaryReporter(),
      JsonReporter(path: "./report.json")
    ]
    ..stepDefinitions = [GivenCounterIsSetTo(), TapButtonNTimesStep()]
    ..customStepParameterDefinitions = []
    ..restartAppBetweenScenarios = true
    ..targetAppPath = "test_driver/app.dart"
    ..keepAppRunningAfterTests = false
    ..targetDeviceId = "windows";
  return GherkinRunner().execute(config);
}
