import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'webcontent_converter_platform_interface.dart';

/// An implementation of [WebcontentConverterPlatform] that uses method channels.
class MethodChannelWebcontentConverter extends WebcontentConverterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('webcontent_converter');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
