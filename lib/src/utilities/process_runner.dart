import 'dart:io';

import 'package:get_it/get_it.dart';
import 'package:mason_logger/mason_logger.dart';

class ProcessRunner {
  final _logger = GetIt.I<Logger>();

  Future<void> run(
    String command,
    List<String> arguments, {
    bool runInShell = false,
  }) async {
    try {
      final process = await Process.start(
        command,
        arguments,
        runInShell: runInShell,
      );

      await process.stdout.pipe(stdout);
      await process.stderr.pipe(stderr);
      await process.exitCode;
    } on ProcessException catch (e) {
      _logger.err(e.message);
    }
  }
}
