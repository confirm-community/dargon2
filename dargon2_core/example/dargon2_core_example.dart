import 'dart:ffi';

import 'package:dargon2_core/dargon2_core.dart';

void main() async {
  // Create an instance of DArgon2
  final argon2 = DArgon2Native(loader: TestLibLoader());
  await argon2.initialize();
}

class TestLibLoader implements LibLoader {
  @override
  Future<String> getPath() async {
    // Return the Argon2 Reference Library's path here
    throw UnimplementedError();
  }

  @override
  Future<DynamicLibrary> loadLib() async {
    // Return the actual loaded DynamicLibary here
    throw UnimplementedError();
  }
}
