import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dialogplugin/dialogplugin_method_channel.dart';

void main() {
  MethodChannelDialogplugin platform = MethodChannelDialogplugin();
  const MethodChannel channel = MethodChannel('dialogplugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
