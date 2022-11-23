#include "include/testdialog/testdialog_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "testdialog_plugin.h"

void TestdialogPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  testdialog::TestdialogPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
