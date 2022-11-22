import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'dialogplugin_platform_interface.dart';

/// An implementation of [DialogpluginPlatform] that uses method channels.
class MethodChannelDialogplugin extends DialogpluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('dialogplugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
