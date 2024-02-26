// import 'package:flutter/material.dart';
//
// class addexp extends StatefulWidget {
//   final List<dynamic> input;
//   const addexp ({super.key, required this.input});
//
//
// z
//
//   @override
//   State<addexp> createState() => _addexpState();
// }
//
// class _addexpState extends State<addexp> {
//   String dropdown = " 1";
//   var items=[
//     "1"
//   ];
//   // int index= 0;
//
//
//   String name="";
//   TextEditingController names=TextEditingController();
//
//   void _showDatePicker(){
//     showDatePicker(context: context,
//         initialDate: DateTime.now(),
//         firstDate: DateTime(2000),
//         lastDate: DateTime(2025));
//   }
//
//
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         title: Text("Add Expense"),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           TextFormField(
//             onTap: _showDatePicker,
//             keyboardType: TextInputType.none,
//             decoration: InputDecoration(
//               prefixIcon: Icon(Icons.date_range_rounded,),
//               labelText: 'Date',
//               labelStyle: TextStyle(fontWeight: FontWeight.w100,fontSize: 18,
//                   fontFamily: "Outfit"),
//             ),
//           ),
//           DropdownButton(
//               value: dropdown,
//               icon: Icon(Icons.keyboard_arrow_down),
//               iconSize: 50,
//               dropdownColor: Colors.black,
//               items: items.map((String items){
//                 return DropdownMenuItem(
//                   value: items,
//                   child: Text(items),
//                 );
//               }
//               ).toList(),
//               onChanged: (String? newvalue){
//                 setState(() {
//                   dropdown=newvalue!;
//                   // widget.input[index];
//                 });
//
//               }
//           ),
//           TextFormField(
//             decoration: InputDecoration(
//               prefixIcon: Icon(Icons.date_range_rounded),
//               labelText: 'Amount',
//               labelStyle: TextStyle(fontWeight: FontWeight.w100,fontSize: 18,
//                   fontFamily: "Outfit"),
//             ),
//           ),
//           DropdownButtonFormField(
//               decoration: InputDecoration(
//               ),
//               hint: Text('Spent mode',style:TextStyle(color:Colors.black,fontWeight: FontWeight.w100,fontSize: 18,
//                   fontFamily: "Outfit") ,),
//               dropdownColor: Colors.black,
//               items: ['_','_','_',].map((String value){
//                 return DropdownMenuItem(
//                   value: value,
//                   child: Text(value,style: TextStyle(color: Colors.white),),
//                 );
//               }
//               ).toList(),
//               onChanged: (_){}
//           ),
//           Row(
//             children: [SizedBox(width: 100,),
//               Text('Attachment',style: TextStyle(fontWeight: FontWeight.w100,fontSize: 18,
//                   fontFamily: "Outfit"),),
//               SizedBox(width: 20,),
//               ElevatedButton(
//                 onPressed: (){}, child: Text('Upload'),
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.black,
//                   onPrimary: Colors.white,
//                   shape: RoundedRectangleBorder(),
//                 ),)
//
//             ],
//           ),
//           ElevatedButton(
//             onPressed: (){
//               setState(() {
//
//                 // Navigator.push(context, MaterialPageRoute(builder:(context)=>view()));
//               });
//
//             }, child: Text('Save'),
//             style: ElevatedButton.styleFrom(
//               primary: Colors.black,
//               onPrimary: Colors.white,
//               shape: RoundedRectangleBorder(),
//             ),)
//         ],
//       ),
//     );
//   }
// }
