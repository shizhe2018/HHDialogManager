
import 'dialogplugin_platform_interface.dart';

class Dialogplugin {
  Future<String?> getPlatformVersion() {
    return DialogpluginPlatform.instance.getPlatformVersion();
  }
}
