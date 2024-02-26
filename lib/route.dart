// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
//
// import 'newexpensive.dart'; // Import the intl package
//
//
// class NextPage extends StatefulWidget {
//   final ExpenseData expenseData;
//
//   NextPage({required this.expenseData});
//   @override
//   _NextPageState createState() => _NextPageState();
// }
//
// class _NextPageState extends State<NextPage> {
//   List<Map<String, String>> dataList = [];
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Slots"),
//         actions: [
//           ElevatedButton(
//             onPressed: () async {
//               final result = await Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) =>
//               );
//
//               if (result != null) {
//                 setState(() {
//                   dataList.add(result);
//                 });
//               }
//             },
//             child: Text("Add"),
//           )
//         ],
//       ),
//       body: ListView.builder(
//         itemCount: dataList.length,
//         itemBuilder: (BuildContext context, int index) {
//           var items = dataList[index];
//
//           // Format the date using intl package
//           String formattedDate = (items["date"] != null)
//               ? DateFormat('yyyy-MM-dd').format(DateTime.parse(items["date"]!))
//               : "";
//
//           return ListTile(
//             title: Text(
//               "Date: $formattedDate"
//                   "Category: ${items["category"]}"
//                   "Amount: ${items["amount"]}"
//                   "Option: ${items["option"]}",
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
//
// class ExpenseData {
//   DateTime? date;
//   String? category;
//   String? amount;
//   String? option;
//
//
//   ExpenseData({this.date, this.category, this.amount,this.option, });
//
// }