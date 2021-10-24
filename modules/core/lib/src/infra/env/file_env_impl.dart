import 'dart:io';

import '../env.dart';

class FileEnvImpl implements Env {
  final Loader loader;

  FileEnvImpl({String fileName = '.env', this.loader = _loadFile});

  bool _isInitialized = false;
  final Map<String, String> _envMap = {};

  @override
  Future<void> load({String fileName = '.env'}) async {
    final file = await loader(fileName);
    _envMap.clear();
    _envMap.addAll(_parse(file));
    _isInitialized = true;
  }

  static Future<String> _loadFile(String filename) async {
    try {
      final envString = await File("./assets/$filename").readAsString();
      if (envString.isEmpty) {
        throw EmptyEnvFileError();
      }

      return envString;
    } catch (e) {
      throw FileNotFoundError();
    }
  }

  Map<String, String> _parse(String envString) {
    final Map<String, String> map = {};

    final lines = envString.split('\n');

    for (var line in lines) {
      if (line.trim().startsWith("#")) continue;

      final index = line.indexOf("=");
      if (index == -1) continue;

      final key = line.substring(0, index);
      final value = line.substring(index + 1, line.length).trim();
      map[key] = value;
    }
    return map;
  }

  @override
  String operator [](String key) {
    if (!_isInitialized) {
      throw NotInitializedError();
    }
    if (!_envMap.containsKey(key)) {
      throw KeyNotFoundError();
    }
    return _envMap[key]!;
  }
}
