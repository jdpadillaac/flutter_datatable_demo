import 'package:flutter/material.dart';

class DataTablePageW extends StatelessWidget {
  const DataTablePageW({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final TextStyle rowTextStyle = TextStyle(
      color: Colors.white,
      fontSize: 15,
    );
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.green,
        ),
        height: 200,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: DataTable(
                headingRowColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  return Colors.lightGreen;
                }),
                dataTextStyle: TextStyle(color: Colors.white),
                columnSpacing: 180,
                columns: [
                  DataColumn(
                    label: Text(
                      'Productos',
                      style: rowTextStyle,
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Cantidad',
                      style: rowTextStyle,
                    ),
                  ),
                ],
                rows: [
                  DataRow(
                    cells: [
                      DataCell(Text('Arroz')),
                      DataCell(Text('10')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('Aceite')),
                      DataCell(Text('50')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('Carne')),
                      DataCell(Text('10')),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
