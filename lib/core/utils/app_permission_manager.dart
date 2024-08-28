import 'package:permission_handler/permission_handler.dart';

import '../data/errors/app_failure.dart';

enum AppPermission {
  gallery,
  camera,
  location,
  mic,
}

abstract class AppPermissionManager {
  static Future<AppFailure?> ensure({required AppPermission permission}) async {
    final PermissionStatus status = await permission.permission.status;
    if (status == PermissionStatus.denied) {
      final PermissionStatus newStatus = await permission.permission.request();
      return newStatus.asAppFailure(permission);
    } else {
      return status.asAppFailure(permission);
    }
  }
}

extension on AppPermission {
  Permission get permission {
    switch (this) {
      case AppPermission.gallery:
        return Permission.photos;
      case AppPermission.camera:
        return Permission.camera;
      case AppPermission.location:
        return Permission.location;
      case AppPermission.mic:
        return Permission.microphone;
    }
  }
}

extension on PermissionStatus {
  AppFailure? asAppFailure(AppPermission p) {
    switch (this) {
      // The user granted access to the requested feature.
      case PermissionStatus.granted:
      // User has authorized this application for limited access. Only supported on iOS (iOS14+).
      case PermissionStatus.limited:
        return null;
      case PermissionStatus.restricted:
      // The user denied access to the requested feature, permission needs to be asked first.
      case PermissionStatus.denied:

      // Permission to the requested feature is permanently denied,
      // the permission dialog will not be shown when requesting this permission.
      // The user may still change the permission status in the settings.
      case PermissionStatus.permanentlyDenied:
      case PermissionStatus.provisional:
        break;
    }
    return null;
  }
// Done: Keep in mind issue with permission handler:
// https://github.com/Baseflow/flutter-permission-handler/issues/718#event-5560838657
}
