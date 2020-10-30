import 'package:datatable_demo/data_table.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DatTable',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.green),
      ),
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('DataTable'),
          ),
          body: DataTablePageW()),
    );
  }
}
