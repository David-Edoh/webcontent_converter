import 'package:flutter_test/flutter_test.dart';
import 'package:webcontent_converter/webcontent_converter.dart';
import 'package:webcontent_converter/webcontent_converter_platform_interface.dart';
import 'package:webcontent_converter/webcontent_converter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockWebcontentConverterPlatform
    with MockPlatformInterfaceMixin
    implements WebcontentConverterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final WebcontentConverterPlatform initialPlatform = WebcontentConverterPlatform.instance;

  test('$MethodChannelWebcontentConverter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelWebcontentConverter>());
  });

  test('getPlatformVersion', () async {
    WebcontentConverter webcontentConverterPlugin = WebcontentConverter();
    MockWebcontentConverterPlatform fakePlatform = MockWebcontentConverterPlatform();
    WebcontentConverterPlatform.instance = fakePlatform;

    // expect(await webcontentConverterPlugin.getPlatformVersion(), '42');
  });
}
