import 'package:gerente_de_apps/models/counter.dart';
import 'package:test/test.dart';

void main() {
  test('O valor de Counter deve ser incrementado', () {
    final counter = Counter();

    counter.Increment();

    expect(counter.value, 1);
  });
}
