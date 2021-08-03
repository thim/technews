import 'package:injector/injector.dart';

typedef T InjectBuilder<T>();

class AppInject {
  AppInject._();

  static AppInject instance = AppInject._();

  static AppInject get I => instance;

  Injector _injector = Injector.appInstance;

  void registerDependency<T>(InjectBuilder<T> builder, {bool override = false, String dependencyName = ""}) {
    _injector.registerDependency(builder, override: override, dependencyName: dependencyName);
  }

  void registerSingleton<T>(InjectBuilder<T> builder, {bool override = false, String dependencyName = ""}) {
    _injector.registerSingleton(builder, override: override, dependencyName: dependencyName);
  }

  T get<T>({String dependencyName = ""}) {
    return _injector.get(dependencyName: dependencyName);
  }

  T call<T>([String instanceName = ""]) {
    return get<T>(dependencyName: instanceName);
  }
}

T inject<T>() {
  return AppInject.I.get();
}

void registerDependency<T>(InjectBuilder<T> builder) {
  AppInject.I.registerDependency(builder);
}
void registerSingleton<T>(InjectBuilder<T> builder, {bool override = false}) {
  AppInject.I.registerSingleton(builder, override: override);
}