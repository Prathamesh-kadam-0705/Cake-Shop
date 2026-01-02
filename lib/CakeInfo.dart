import 'package:flutter/material.dart';
import 'package:my_first_app/HomePage.dart';
import 'package:my_first_app/OwnerHomePage.dart';
import 'package:my_first_app/Themes.dart';
import 'package:my_first_app/Home_page.dart';

class CakeInfo extends StatefulWidget{

  final int index;
  final int catagariShow ;

  const CakeInfo({super.key,required this.catagariShow,required this.index});

  State<CakeInfo> createState() => CakeInfoMain();
}

class CakeInfoMain extends State<CakeInfo>{

  int price =0;
  int selectedValue = 1;


  Widget build(BuildContext context){
     return Scaffold(

       body: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Container(
             height: 450,
             width: double.infinity,
              margin: EdgeInsets.all(10),
             decoration: ScrollingImgDecoration.imgContainer,
             child: ClipRRect(
               borderRadius: BorderRadius.circular(10),
               child: Image.asset(
                   Home_page_state.allImages[widget.catagariShow][widget.index],
                 fit: BoxFit.cover,
               ),
             ),
           ),
           SizedBox(height: 15,),
           Text(
             '  '+Home_page_state.allProductName[widget.catagariShow][widget.index],
             style: Header2(color: AppColor.faintPink),
             overflow: TextOverflow.ellipsis,
           ),
           Container(
             margin: EdgeInsets.all(10),
             child: Row(
               children: [
                 Container(
                   padding: EdgeInsets.all(10),
                   child: InkWell(
                     onTap: (){
                       print('tap on cake maker');
                     },
                     child: Row(
                       children: [
                         CircleAvatar(
                           backgroundImage: AssetImage('assets/Kernal.png'),
                           radius: 20,
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 10),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Container(
                                 child: Text(
                                   'Cake Maker            ',
                                   style: Header1(color: AppColor.faintPink),
                                 ),
                               ),
                               Text(
                                 'cook',
                                 style:subTitel()
                               )
                             ],
                           ),
                         )
                       ],
                     ),
                   ),
                 ),
                 Container(
                    margin: EdgeInsets.all(5),
                   child:Row(
                     children: [
                       InkWell(
                         onTap : (){
                           print('tap on chat');
                         },
                         child: Container(
                           padding : ContainerStyle.iconPadding,
                           margin: ContainerStyle.iconMargin,
                           child: Icon(Icons.chat,
                             color: AppColor.faintPink,
                           ),
                           decoration: ContainerStyle.iconContainer,
                         ),
                       ),
                       InkWell(
                         onTap: (){
                           print('tap on call');
                         },
                         child: Container(
                           padding : ContainerStyle.iconPadding,
                           margin: ContainerStyle.iconMargin,
                           child: Icon(Icons.call,
                             color: AppColor.faintPink,
                           ),
                           decoration: ContainerStyle.iconContainer,
                         ),
                       )
                     ],
                   ) ,
                 )
               ],
             ),
           ),
           SizedBox(height: 10,),
           Container(
             margin: EdgeInsets.all(10),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 OutlinedButton(
                     onPressed: (){
                       setState(() {
                         price = int.parse(Home_page_state.allProdutPrice[widget.catagariShow][widget.index])*1;
                       });
                       // color : Colors.pink;
                     },
                     child: Text(
                       '0.1  kg'
                     ),
                     style : ForOutLinedButton.textTheme
                 ),
                 OutlinedButton(
                     onPressed: (){
                       setState(() {
                         price = int.parse(Home_page_state.allProdutPrice[widget.catagariShow][widget.index])*2;
                       });
                     },
                     child: Text(
                         '1.0  kg'
                     ),
                     style : ForOutLinedButton.textTheme
                 ),

                 OutlinedButton(

                     onPressed: (){
                      setState(() {
                        price = int.parse(Home_page_state.allProdutPrice[widget.catagariShow][widget.index])*3;
                      });
                     },
                     child: Text(
                         '1.5  kg'
                     ),
                   style:ForOutLinedButton.textTheme,
                 ),

                 OutlinedButton(
                     onPressed: (){
                       setState(() {
                         price = int.parse(Home_page_state.allProdutPrice[widget.catagariShow][widget.index])*4;
                       });
                     },
                     child: Text(
                         '2.0  kg'
                     ),
                   style:ForOutLinedButton.textTheme,
                 ),
               ],
             ),
           ),
           Container(
             margin: EdgeInsets.all(10),
             width: double.infinity,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Container(
                   margin:forOutLinedButton2.btnMargin,
                   height: forOutLinedButton2.btnHeight,
                   width: forOutLinedButton2.btnWidth,
                   decoration: forOutLinedButton2.outlineButtoninfo(),
                   child: Center(
                     child: Text(
                       '$price'
                     ),
                   ),
                 ),
                 InkWell(
                   onTap: (){
                     if(Home_page_state.favoritCatagari.contains(widget.catagariShow)&&
                     Home_page_state.favoritIndex.contains(widget.index)){

                     }else{
                       Home_page_state.favoritCatagari.add(widget.catagariShow);
                       Home_page_state.favoritIndex.add(widget.index);

                     }


                   },
                   child: Container(
                     margin:forOutLinedButton2.btnMargin,
                     height: forOutLinedButton2.btnHeight,
                     width: forOutLinedButton2.btnWidth,
                     decoration: forOutLinedButton2.outlineButtoninfo(color: AppColor.faintPink),
                     child: Center(
                       child: Text(
                           'Add to Card',
                         style: Header1(color: Colors.white),
                       ),
                     ),
                   ),
                 ),
               ],
             ),
           )
         ],
       ),
     );
  }
}