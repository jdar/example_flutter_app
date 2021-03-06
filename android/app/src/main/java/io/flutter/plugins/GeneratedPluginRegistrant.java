package io.flutter.plugins;

import io.flutter.plugin.common.PluginRegistry;
import com.polidea.blemulator.BlemulatorPlugin;
import com.polidea.flutter_ble_lib.FlutterBleLibPlugin;
import com.baseflow.permissionhandler.PermissionHandlerPlugin;

/**
 * Generated file. Do not edit.
 */
public final class GeneratedPluginRegistrant {
  public static void registerWith(PluginRegistry registry) {
    if (alreadyRegisteredWith(registry)) {
      return;
    }
    BlemulatorPlugin.registerWith(registry.registrarFor("com.polidea.blemulator.BlemulatorPlugin"));
    FlutterBleLibPlugin.registerWith(registry.registrarFor("com.polidea.flutter_ble_lib.FlutterBleLibPlugin"));
    PermissionHandlerPlugin.registerWith(registry.registrarFor("com.baseflow.permissionhandler.PermissionHandlerPlugin"));
  }

  private static boolean alreadyRegisteredWith(PluginRegistry registry) {
    final String key = GeneratedPluginRegistrant.class.getCanonicalName();
    if (registry.hasPlugin(key)) {
      return true;
    }
    registry.registrarFor(key);
    return false;
  }
}
