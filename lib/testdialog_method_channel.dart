import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'testdialog_platform_interface.dart';

/// An implementation of [TestdialogPlatform] that uses method channels.
class MethodChannelTestdialog extends TestdialogPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('testdialog');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
