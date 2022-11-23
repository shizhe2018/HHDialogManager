import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'testdialog_method_channel.dart';

abstract class TestdialogPlatform extends PlatformInterface {
  /// Constructs a TestdialogPlatform.
  TestdialogPlatform() : super(token: _token);

  static final Object _token = Object();

  static TestdialogPlatform _instance = MethodChannelTestdialog();

  /// The default instance of [TestdialogPlatform] to use.
  ///
  /// Defaults to [MethodChannelTestdialog].
  static TestdialogPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [TestdialogPlatform] when
  /// they register themselves.
  static set instance(TestdialogPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
