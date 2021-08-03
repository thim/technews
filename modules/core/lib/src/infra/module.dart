import 'injector.dart';

abstract class ModuleDI {
  void registerInject(AppInject injector);
}

void useModules(List<ModuleDI> modules) {
  for (ModuleDI module in modules) {
    module.registerInject(AppInject.instance);
  }
}
