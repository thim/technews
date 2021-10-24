import 'package:http/http.dart';

import 'src/infra/injector.dart';
import 'src/infra/module.dart';
import 'src/infra/network.dart';
import 'src/infra/network_impl.dart';

class CoreModule implements ModuleDI {
  @override
  void registerInject(AppInject injector) {
    injector.registerSingleton<Client>(() => Client());
    injector.registerDependency<Network>(() => AppNetwork(injector()));
  }
}
