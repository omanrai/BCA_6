import 'package:bca_6/model/student_id_model.dart';
import 'package:flutter/material.dart';

class StudentIDScreen extends StatelessWidget {
  // const StudentIDScreen({super.key});
  final List<String> StudentDetails = [
    "Aryan shah",
    "BCA 6th Sem",
    "1",
    "+977 9804055044",
  ];

  final Map<String, String> studentInfo = {
    "Name": "Aryan Tiwari",
    "Class": "BCA 6th Sem",
    "Roll No": "25465",
    "Contact No": "+977 9804035120",
  };

  final List<Map<String, dynamic>> students = [
    {
      "Name": "Aryan godawari",
      "Class": "BCA 6th Sem",
      "Roll No": 1,
      "Contact No": "+977 9804055044",
    },
    {
      "Name": "John Chamling Rai",
      "Class": "BCA 5th Sem",
      "Roll No": 2,
      "Contact No": "+977 980405044",
    },
    {
      "Name": "Jane Chaudhary",
      "Class": "BCA 4th Sem",
      "Roll No": 32425,
      "Contact No": "+977 9804055046",
    },
  ];

  final List<StudentIdModel> studentModels = [
    StudentIdModel(
      name: "Aryan",
      className: "BCA 6th Sem",
      rollNo: 1453453,
      contactNo: "+977 9804055044",
      imagePath: 'assets/s1.png',
    ),
    StudentIdModel(
      name: "John Chamling Rai",
      className: "BCA 5th Sem",
      rollNo: 2,
      contactNo: "+977 980405045",
      imagePath: 'assets/s2.png',
    ),
    StudentIdModel(
      name: "Jane Chaudhary",
      className: "BCA 4th Sem",
      rollNo: 3,
      contactNo: "+977 9804055046",
      imagePath: 'assets/s3.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student ID"), backgroundColor: Colors.blue),
      body: SingleChildScrollView(
        child: Column(
          spacing: 10,
          children: [
            // Example of ListView with List
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue[100],
              ),
              child: ListView(
                shrinkWrap: true,
                children: StudentDetails.map(
                  (detail) => ListTile(title: Text(detail)),
                ).toList(),
              ),
            ),

            // Example of ListView with Map
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(10),
                color: Colors.green[100],
              ),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  String key = studentInfo.keys.elementAt(index);
                  String value = studentInfo[key]!;
                  return ListTile(title: Text("$key: $value"));
                },
                itemCount: studentInfo.length,
                shrinkWrap: true,
              ),
            ),

            //example of ListView with List of Maps
            ListView.builder(
              itemBuilder: (context, index) {
                final student = students[index];
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orange[100],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: student.entries
                        .map(
                          (e) =>
                              Column(children: [Text("${e.key}: ${e.value}")]),
                        )
                        .toList(),
                  ),
                );
              },
              itemCount: students.length,
              shrinkWrap: true,
            ),

            //example of Student ID card
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 150),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 20,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/s1.png'),
                  ),
                  Text(
                    "Name : Aryan",
                    style: TextStyle(fontSize: 20),

                    // textScaleFactor: 2,
                  ),
                  Divider(thickness: 1.5, color: Colors.black),
                  Text("Class : BCA 6th Sem", style: TextStyle(fontSize: 20)),
                  Text("Roll No : 1", style: TextStyle(fontSize: 20)),
                  Text(
                    "Contact No : +977 9804055044",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),

            //example of Student ID card using model class
            ListView.builder(
              itemCount: studentModels.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final student = studentModels[index];
                return ListTile(
                  title: Text(student.name.toString()),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Class: ${student.className}"),
                      Text("Roll No: ${student.rollNo}"),
                      Text("Contact No: ${student.contactNo}"),
                    ],
                  ),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                      student.imagePath ?? 'assets/s1.png',
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
