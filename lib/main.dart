import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radar_clima2/app.dart';

void main() {
  // O ProviderScope armazena o estado de todos os providers do app
  runApp(ProviderScope(child: const MyApp()));
}
