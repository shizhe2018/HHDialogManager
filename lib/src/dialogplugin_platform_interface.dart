import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'dialogplugin_method_channel.dart';

abstract class DialogpluginPlatform extends PlatformInterface {
  /// Constructs a DialogpluginPlatform.
  DialogpluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static DialogpluginPlatform _instance = MethodChannelDialogplugin();

  /// The default instance of [DialogpluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelDialogplugin].
  static DialogpluginPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DialogpluginPlatform] when
  /// they register themselves.
  static set instance(DialogpluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
