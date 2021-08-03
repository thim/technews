import 'package:core/core_module.dart';
import 'package:core/src/infra/flutter_env_impl.dart';

import 'src/infra/env.dart';
import 'src/infra/injector.dart';
import 'src/infra/module.dart';

class CoreModuleFlutter implements ModuleDI {
  @override
  void registerInject(AppInject injector) {
    CoreModule().registerInject(injector);
    injector.registerSingleton<Env>(() => FlutterEnvImpl(), override: true);
  }
}
