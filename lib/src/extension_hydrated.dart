import 'dart:async';
import 'dart:core';

import 'hydrated_transformer.dart';

extension StreamHydrated<T> on Stream<T> {
  Stream hydrated(String key, {seeded, T Function() orElse}) {
    return this.transform(HydratedTransformer(key, seeded, orElse));
  }
}
