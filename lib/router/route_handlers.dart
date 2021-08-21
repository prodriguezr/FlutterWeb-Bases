import 'package:bases/ui/views/views.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

// Handlers
final counterHandler = Handler(handlerFunc: (context, params) {
  return CounterView(base: params['base']?[0] ?? '5');
});

final counterProviderHandler = Handler(handlerFunc: (context, params) {
  print(params['q']?[0]);
  return CounterProviderView(base: params['q']?[0] ?? '1200');
});

final notFoundHandler = Handler(handlerFunc: (_, __) => NotFoundView());

final dashboardUserHandler = Handler(handlerFunc: (context, params) {
  List<Widget> list = [];

  params.forEach((key, value) {
    final Text text = Text(
      '$key: $value',
      style: TextStyle(fontSize: 30),
    );

    list.add(text);
  });

  print(params);
  return Container(
    child: Column(
      children: list,
    ),
  );
});
