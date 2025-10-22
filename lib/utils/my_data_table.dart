import 'package:flutter/material.dart';

class MyDataTable extends StatelessWidget {
  const MyDataTable({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: [
        DataColumn(label: Text('ID')),
        DataColumn(label: Text('Name')),
        DataColumn(label: Text('Program')),
      ],
      rows: const [
        DataRow(
          cells: [
            DataCell(Text('S001')),
            DataCell(Text('Bhavesh Yaduvanshi')),
            DataCell(Text('B.Tech CSE')),
          ],
        ),
        DataRow(
          cells: [
            DataCell(Text('S002')),
            DataCell(Text('Rahul sahu')),
            DataCell(Text('B.Tech AIDS')),
          ],
        ),
        DataRow(
          cells: [
            DataCell(Text('S003')),
            DataCell(Text('Muskan sahu')),
            DataCell(Text('B.tech CSE')),
          ],
        ),
        DataRow(
          cells: [
            DataCell(Text('S004')),
            DataCell(Text('Himanshu jadhav')),
            DataCell(Text('B.tech CSE')),
          ],
        ),
        DataRow(
          cells: [
            DataCell(Text('S005')),
            DataCell(Text('Eve Brown')),
            DataCell(Text('B.Tech Civil')),
          ],
        ),
      ],
    );
  }
}