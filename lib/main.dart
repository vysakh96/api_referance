import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trade_task_riv/providers/salesProvider.dart';

import 'designs/home.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => SalesProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
    ),
  ));
}

