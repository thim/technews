import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/widgets.dart';

import '../env.dart';
import 'file_env_impl.dart';

class FlutterEnvImpl extends FileEnvImpl {
  FlutterEnvImpl() : super(loader: _loadFile);

  static Future<String> _loadFile(String filename) async {
    try {
      WidgetsFlutterBinding.ensureInitialized();
      final envString = await rootBundle.loadString(filename);
      if (envString.isEmpty) {
        throw EmptyEnvFileError();
      }

      return envString;
    } on FlutterError {
      throw FileNotFoundError();
    }
  }
}
