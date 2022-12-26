import 'package:flutter/foundation.dart';

bool get isIOS {
  if (!isWeb) {
    return defaultTargetPlatform == TargetPlatform.iOS;
  }
  return false;
}

bool get isAndroid {
  if (!isWeb) {
    return defaultTargetPlatform == TargetPlatform.android;
  }
  return false;
}

bool get isMacOS {
  if (!isWeb) {
    return defaultTargetPlatform == TargetPlatform.macOS;
  }
  return false;
}

bool get isLinux {
  if (!isWeb) {
    return defaultTargetPlatform == TargetPlatform.linux;
  }
  return false;
}

bool get isWindows {
  if (!isWeb) {
    return defaultTargetPlatform == TargetPlatform.windows;
  }
  return false;
}

bool get isWeb => kIsWeb;
