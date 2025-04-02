import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'webcontent_converter_method_channel.dart';

abstract class WebcontentConverterPlatform extends PlatformInterface {
  /// Constructs a WebcontentConverterPlatform.
  WebcontentConverterPlatform() : super(token: _token);

  static final Object _token = Object();

  static WebcontentConverterPlatform _instance = MethodChannelWebcontentConverter();

  /// The default instance of [WebcontentConverterPlatform] to use.
  ///
  /// Defaults to [MethodChannelWebcontentConverter].
  static WebcontentConverterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [WebcontentConverterPlatform] when
  /// they register themselves.
  static set instance(WebcontentConverterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
