import 'package:first_flutter/model/student.dart';
import 'package:flutter/material.dart';

class DataTableView extends StatefulWidget {
  const DataTableView({super.key});

  @override
  State<DataTableView> createState() => _DataTableViewState();
}

class _DataTableViewState extends State<DataTableView> {
  List<Student> listStudent = [
    Student(fname: 'Nishant', age: 23),
    Student(fname: 'Aasif', age: 27),
    Student(fname: 'Dipson', age: 16),
  ];

  _showAlertDailog(BuildContext context, Student student) {
    AlertDialog alert = AlertDialog(
      title: const Text('Delete?'),
      content: Text('Are you sure you want to delete ${student.fname}?'),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('No')),
        TextButton(
            onPressed: () {
              setState(() {
                listStudent.remove(student);
              });
              Navigator.pop(context);
            },
            child: const Text('Yes'))
      ],
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Table View"),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: DataTable(
          headingRowColor:
              MaterialStateColor.resolveWith((states) => Colors.teal),
          border: TableBorder.all(color: Colors.black),
          columns: const [
            DataColumn(
                label: Expanded(
              child: Text(
                'Name',
                textAlign: TextAlign.center,
              ),
            )),
            DataColumn(
                label: Expanded(
              child: Text(
                'Roll No',
                textAlign: TextAlign.center,
              ),
            )),
            DataColumn(
                label: Expanded(
              child: Text(
                'Action',
                textAlign: TextAlign.center,
              ),
            )),
          ],
          rows: [
            for (Student student in listStudent) ...{
              DataRow(cells: [
                DataCell(Center(
                  child: Text(student.fname!),
                )),
                DataCell(Center(
                  child: Text(student.age.toString()),
                )),
                DataCell(Wrap(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.edit),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _showAlertDailog(context, student);
                        });
                      },
                      icon: const Icon(Icons.delete),
                    ),
                  ],
                )),
              ]),
            }
          ],
        ),
      ),
    );
  }
}
