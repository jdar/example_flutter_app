// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_ble_lib_example/main.dart';

int global = 0;

void main() {
  final initialGlobalValue = global;
  setUp(() {
    global = 42;
  });
  tearDown(() {
    global = initialGlobalValue;
  });

  test('do something with "global"', () {
    expect(++global, 43);
  });

  test('do something with "global"', () {
    // would fail without setUp/tearDown
    expect(++global, 43);
  });
}
