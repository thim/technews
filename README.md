# Tech News

---

[![Flutter](https://github.com/thim/technews/actions/workflows/flutter.yml/badge.svg)](https://github.com/thim/technews/actions/workflows/flutter.yml)

A simple project to demonstrate Clean Architecture and modular organization.

### Build command

To download the dependencies from all projects, run on the root folder:

```shell
flutter pub global activate mono_repo
flutter pub global run mono_repo pub get
```

To run is necessary to setup a valid key from the site: newsapi.org

Flutter run:

```shell
flutter run --dart-define=APIKEY=<...>
```

Dart run:

```shell
dart --define=APIKEY=<...> bin/main.dart
```