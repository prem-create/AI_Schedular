import 'package:flutter/material.dart';

class MyDataTable extends StatelessWidget {
  final List<String> topRowElements;
  final List<List<String>> dataCells;
  const MyDataTable({
    super.key,
    required this.topRowElements,
    required this.dataCells,
  });

  List<DataColumn> dataColumn() {
    return topRowElements
        .map((index) => DataColumn(label: Text(index)))
        .toList();
  }

  List<DataRow> dataRows() {
    return dataCells
        .map(
          (row) =>
              DataRow(cells: row.map((cell) => DataCell(Text(cell))).toList()),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return DataTable(
      border: TableBorder(
        verticalInside: BorderSide(),
        horizontalInside: BorderSide(),
      ),
      columns: dataColumn(),
      rows: dataRows(),
    );
  }
}
