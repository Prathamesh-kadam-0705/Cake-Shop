// import 'package:flutter/material.dart';
// import 'package:my_first_app/LoginPage.dart';
//
// class Ragistration_form extends StatefulWidget{
//
//   const Ragistration_form({super.key});
//
//   State<Ragistration_form> createState() => RagistrationPageState();
// }
//
// class RagistrationPageState extends State<Ragistration_form>{
//
//   final TextEditingController forFullNameController = TextEditingController();
//   final TextEditingController forEmailController = TextEditingController();
//   final TextEditingController forPhoneNumberController = TextEditingController();
//   final TextEditingController forPasswordController = TextEditingController();
//   final TextEditingController forConformPasswordController = TextEditingController();
//   bool isChecked = false;
//
//   @override
//   void dispose() {
//
//     forFullNameController.dispose();
//     forEmailController.dispose();
//     forPhoneNumberController.dispose();
//     forPasswordController.dispose();
//     forConformPasswordController.dispose();
//     super.dispose();
//   }
//
//   Widget build(BuildContext context){
//     return Scaffold(
//       resizeToAvoidBottomInset: true,
//       appBar: AppBar(
//         title: const Text("Welcome"),
//         foregroundColor: Colors.white,
//         backgroundColor: Colors.orange,
//       ),
//
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(18),
//
//           child: Column(
//
//             mainAxisAlignment: MainAxisAlignment.center,
//
//             children: [
//
//               Text("Registration Form",
//                 style: TextStyle(
//                     color: Colors.orange,
//                     fontSize: 18
//                 ),
//               ),
//               const SizedBox(height: 15),
//
//               TextField(
//                 controller: forFullNameController ,
//                 style: TextStyle(
//                   fontSize: 14,
//                 ),
//                 decoration: InputDecoration(
//                     labelText: "Enter full Name",
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     contentPadding: EdgeInsets.symmetric(
//                         vertical: 12,
//                         horizontal: 20
//                     )
//                 ),
//               ),
//               const SizedBox(height: 15),
//
//               TextField(
//                 controller: forEmailController,
//                 style: TextStyle(
//                     fontSize: 14
//                 ),
//                 decoration: InputDecoration(
//                   labelText: "Enter Email Id",
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10)
//                   ),
//                   contentPadding: EdgeInsets.symmetric(
//                       vertical: 12,
//                       horizontal: 20
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 15,),
//
//               TextField(
//                 controller:forPhoneNumberController ,
//                 style: TextStyle(
//                     fontSize: 14
//                 ),
//                 decoration: InputDecoration(
//                   labelText: "Enter Phone Number",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   contentPadding: EdgeInsets.symmetric(
//                     vertical: 12,
//                     horizontal: 20,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 15,),
//
//               TextField(
//                 controller:forPasswordController ,
//                 obscureText: true,
//                 style: TextStyle(
//                     fontSize: 14
//                 ),
//                 decoration: InputDecoration(
//                   labelText: "Enter Password",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   contentPadding: EdgeInsets.symmetric(
//                     vertical: 12,
//                     horizontal: 20,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 15,),
//
//               TextField(
//                 controller:forConformPasswordController ,
//                 obscureText: true,
//                 style: TextStyle(
//                   fontSize: 14,
//                 ),
//                 decoration: InputDecoration(
//                   labelText: "Enter Password",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   contentPadding: EdgeInsets.symmetric(
//                     vertical: 12,
//                     horizontal: 20,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 15,),
//
//               CheckboxListTile(
//                   title:Text( "I agree to all terms and conditions",
//                     style: TextStyle(
//                         fontSize: 14
//                     ),
//                   ),
//                   controlAffinity: ListTileControlAffinity.leading,
//                   value: isChecked,
//                   onChanged: (value){
//                     setState(() {
//                       isChecked = value!;
//                     });
//                   }
//               ),
//
//               OutlinedButton(
//                 onPressed: (){
//
//                   if(!isChecked){
//
//                     return;
//                   }
//                   String username = forFullNameController.text;
//                   String pass1 = forPasswordController.text;
//                   String pass2 = forConformPasswordController.text;
//
//                   if(pass1 == pass2){
//                     Login.forUserName.add(username);
//                     Login.forPassword.add(pass1);
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => LoginPage())
//                     );
//                   }
//                   else{
//
//                   }
//                 },
//                 style:OutlinedButton.styleFrom(
//                     backgroundColor: Colors.orange
//                 ) ,
//                 child: Text("Submit",
//                   style: TextStyle(
//                       color: Colors.white
//                   ),
//                 ),
//               ),
//
//               const SizedBox(height: 15,),
//
//
//
//             ],
//           ),
//         ),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: const EdgeInsets.all(10),
//           children: [
//             const DrawerHeader(
//                 child: UserAccountsDrawerHeader(
//                     accountName: Text("Prathamesh"),
//                     accountEmail: Text("prathameshkadam@gmail.com")
//                 )
//             ),
//             ListTile(
//               leading: const Icon(Icons.person),
//               title: Text('My Profile'),
//               onTap: (){
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.book),
//               title: Text('My Course'),
//               onTap: (){
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }