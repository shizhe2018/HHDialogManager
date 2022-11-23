
import 'testdialog_platform_interface.dart';

class Testdialog {
  Future<String?> getPlatformVersion() {
    return TestdialogPlatform.instance.getPlatformVersion();
  }
}
