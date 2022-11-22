import 'package:flutter_test/flutter_test.dart';
import 'package:dialogplugin/dialogplugin.dart';
import 'package:dialogplugin/dialogplugin_platform_interface.dart';
import 'package:dialogplugin/dialogplugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDialogpluginPlatform 
    with MockPlatformInterfaceMixin
    implements DialogpluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DialogpluginPlatform initialPlatform = DialogpluginPlatform.instance;

  test('$MethodChannelDialogplugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDialogplugin>());
  });

  test('getPlatformVersion', () async {
    Dialogplugin dialogpluginPlugin = Dialogplugin();
    MockDialogpluginPlatform fakePlatform = MockDialogpluginPlatform();
    DialogpluginPlatform.instance = fakePlatform;
  
    expect(await dialogpluginPlugin.getPlatformVersion(), '42');
  });
}
