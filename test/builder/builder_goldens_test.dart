@TestOn('vm')
import 'package:build_test/build_test.dart';
import 'package:test/test.dart';
import 'package:web3dart_avacus/src/builder/generator.dart';

import 'data.dart';

void main() {
  var i = 0;
  // Note: Re-generate goldens with tool/generate_goldens.dart
  testCases.forEach((key, value) {
    test('builder test #${i++}', () {
      return testBuilder(
        const ContractGenerator(),
        {'a|lib/contract.abi.json': key},
        outputs: {'a|lib/contract.g.dart': value},
      );
    });
  });
}
