library core;

// created a support version of `compute`
export 'src/infra/compute.dart' if (dart.library.ui) 'package:flutter/foundation.dart';
export 'src/infra/env.dart';
export 'src/infra/injector.dart';
export 'src/infra/module.dart';
export 'src/infra/network.dart';
