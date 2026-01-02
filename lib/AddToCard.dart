import 'package:flutter/material.dart';
import 'package:my_first_app/Home_page.dart';
import 'package:my_first_app/Themes.dart';

class AddToCard extends StatefulWidget{

  AddToCard({super.key});

  State<AddToCard> createState() => AddToCardState();
}
class AddToCardState extends State<AddToCard>{

  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Card',
          style: Header1(),
        ),
        backgroundColor:  AppColor.faintPink,
      ),
      body: ListView.builder(
        itemCount: Home_page_state.favoritIndex.length,
          itemBuilder: (context,index){
          return Container(
            height: 180,
            margin: EdgeInsets.all(10),
            decoration: ScrollingImgDecoration.imgContainer,
            child: Container(
              color:  AppColor.faintPink,

              child: Row(

                children: [
                  Container(
                    height: 140,
                    width: 90,
                    margin: EdgeInsets.all(2),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        Home_page_state.allImages[Home_page_state.favoritCatagari[index]][Home_page_state.favoritIndex[index]],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
                        Text(
                          Home_page_state.allProductName[Home_page_state.favoritCatagari[index]][Home_page_state.favoritIndex[index]],
                          style: Header1(),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '₹ '+Home_page_state.allProdutPrice[Home_page_state.favoritCatagari[index]][Home_page_state.favoritIndex[index]],
                          style:Header1(),
                        ),

                            OutlinedButton(
                                onPressed: (){
                                  Home_page_state.favoritCatagari.remove(index);
                                  Home_page_state.favoritIndex.remove(index);
                                },
                                style: OutlinedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 4)
                                ),
                                child: Center(
                                  child: Text(
                                    'Remove Form Card'
                                  ),
                                )
                            ),
                            OutlinedButton(
                                onPressed: (){

                                },
                                style: ForOutLinedButton.textTheme,
                                child: Center(
                                  child: Text(
                                    'Proceed to Pay',
                                    style: Header1(),
                                  ),
                                )
                            )

                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
          }
      ),
    );
  }
}