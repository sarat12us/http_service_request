

import 'package:flutter_test/flutter_test.dart';

import 'package:http_request_json/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(App());

  });
}
