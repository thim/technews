typedef Loader = Future<String> Function(String filename);

abstract class Env {
  Future<void> load({String fileName = 'assets/.env'});

  String operator [](String key);
}

class NotInitializedError extends Error {}

class KeyNotFoundError extends Error {}

class FileNotFoundError extends Error {}

class EmptyEnvFileError extends Error {}
