// import 'package:flutter/material.dart';
// import 'package:my_first_app/CakeInfo.dart';
// import 'package:my_first_app/OwnerHomePage.dart';
// import 'dart:math';
// import 'package:my_first_app/LoginPage.dart';
//
// class HomePage extends StatefulWidget{
//
//   final String userName;
//
//   const HomePage({super.key,required this.userName});
//
//   State<HomePage> createState() => HomePageState();
// }
//
// class HomePageState extends State<HomePage>{
//
//   static var arrFavorite = [];
//
//   Widget build(BuildContext context){
//
//     return DefaultTabController(
//       length: 4,
//       child: Scaffold(
//
//         appBar: AppBar(
//
//           title: Text("Cake Man",
//             style:TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ) ,
//
//           ),
//           backgroundColor: Colors.orange,
//           foregroundColor: Colors.white,
//
//         ),
//
//         body:TabBarView(
//             children: [
//
//
//               ListView.builder(
//                 itemBuilder: (context,index){
//                   var random = Random();
//                   int  number = random.nextInt(9)+1;
//
//                   return Container(
//
//                     child: Column(
//
//                       children: [
//
//                         Padding(
//                           padding: const EdgeInsets.all(10),
//                           child: Container(
//
//                             decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(10),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     // color: Colors.black,
//                                       offset: Offset(0, 5),
//                                       blurRadius: 5
//                                   )
//                                 ]
//                             ),
//                             child: ClipRRect(
//                               borderRadius: BorderRadius.circular(10),
//                               child: Image.asset(
//                                   'assets/cake${number}.png',
//                                   fit: BoxFit.cover,
//                                   height: 200,
//                                   width: double.infinity
//                               ),
//                             ),
//                           ),
//                         ),
//
//                         // SizedBox(height: 5,),
//                         Padding(
//                           padding:const EdgeInsets.symmetric(vertical: 5),
//                           child: Container(
//                             padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 4),
//                             color : Colors.white,
//                             child: Text(
//                               OwnerHome.arrProductName[index],
//                               style: TextStyle(
//                                   color: Colors.orange,
//                                   fontWeight: FontWeight.bold,
//                                   backgroundColor: Colors.white,
//                                   fontSize: 16
//                               ),
//                             ),
//                           ),
//                         ),
//
//                         // SizedBox(height: 5,),
//
//                         Padding(
//                           padding: EdgeInsets.symmetric(vertical: 5),
//                           child: Container(
//                             padding: EdgeInsets.symmetric(vertical: 2,horizontal: 4),
//                             child: Text(
//                               '₹ ${OwnerHome.arrProductPrice[index]}',
//                               style: TextStyle(
//                                   color: Colors.orange,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 16
//                               ),
//                             ),
//                           ),
//                         ),
//
//                         // SizedBox(height: 15,),
//
//                         Padding(
//                           padding: EdgeInsets.symmetric(vertical: 5),
//                           child: Container(
//                             padding: EdgeInsets.symmetric(vertical: 2,horizontal: 4),
//                             child: Text(
//                               OwnerHome.arrProductDescription[index],
//                             ),
//                           ),
//                         )
//
//                       ],
//                     ),
//                   );
//
//                 },
//                 itemCount: OwnerHome.arrProductName.length,
//
//               ),
//
//               GridView.builder(
//                   gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(
//                       maxCrossAxisExtent: 200,
//                   ),
//                   itemBuilder: (context,index){
//                     return Container(
//                       decoration:BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.black,
//                               blurRadius: 5,
//                               offset: Offset(0, 5)
//                             )
//                           ]
//                       ),
//                       child: Material(
//                         borderRadius: BorderRadius.circular(10),
//                         child: Padding(
//                             padding: EdgeInsets.all(10),
//                           child: InkWell(
//                             onTap: (){
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => CakeInfo(index:index)
//                                   )
//                               );
//
//                             },
//                             child: ClipRRect(
//                               borderRadius: BorderRadius.circular(10),
//                               child: Image.asset(
//                                 'assets/cake${index+1}.png',
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                   itemCount: OwnerHome.arrProductDescription.length,
//               ),
//
//
//
//               SingleChildScrollView(
//
//
//
//               ),
//
//               SingleChildScrollView(
//
//
//
//               )
//
//
//
//
//
//
//             ],
//         ),
//
//         bottomNavigationBar: const Material(
//
//           child: SizedBox(
//             height: 48,
//             child: TabBar(
//               labelStyle: TextStyle(
//                   fontSize: 12
//               ),
//               unselectedLabelStyle: TextStyle(
//                   fontSize: 11
//               ),
//               tabs: [
//                 Tab(icon: Icon(Icons.home,size: 18,),text: "Home",),
//                 Tab(icon: Icon(Icons.shop,size: 18),text: "Shopping",),
//                 Tab(icon: Icon(Icons.favorite_border,size: 18),text: "Favorits",),
//                 Tab(icon: Icon(Icons.person,size: 18),text: "Profile",)
//               ],
//             ),
//           ),
//         ),
//
//         drawer: Drawer(
//           child: ListView(
//             children: [
//               DrawerHeader(
//
//                   child: Column(
//                     children: [
//                       CircleAvatar(
//                         backgroundImage:AssetImage('assets/DogiDon.png'),
//                       ),
//                       Text(
//                         widget.userName,
//                       ),
//                     ],
//                   ),
//               ),
//               ListTile(
//                 leading: Icon(Icons.logout),
//                 title: const Text('Logout'),
//                 onTap: (){
//                   Navigator.pushReplacement(
//                       context,
//                       MaterialPageRoute(builder: (context)=>const LoginPage()
//                       ),
//                   );
//                 },
//               )
//
//             ],
//           ),
//         ),
//       ),
//
//
//     );
//   }
// }