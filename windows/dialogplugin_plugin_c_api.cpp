#include "include/dialogplugin/dialogplugin_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "dialogplugin_plugin.h"

void DialogpluginPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  dialogplugin::DialogpluginPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
