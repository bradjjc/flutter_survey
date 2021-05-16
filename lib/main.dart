import 'package:flutter/material.dart';
import 'package:flutter_jet_survey/provider/list_provider.dart';
import 'package:flutter_jet_survey/ui/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
        ChangeNotifierProvider<ListProvider>(create: (_) => ListProvider()),
    ],
    child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    )
    );
  }
}
