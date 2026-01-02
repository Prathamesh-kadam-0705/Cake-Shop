import 'package:flutter/material.dart';
import 'package:my_first_app/CakeInfo.dart';
import 'package:my_first_app/Home_page.dart';
import 'package:my_first_app/Themes.dart';

class MoreProduct extends StatefulWidget{

  int catagari=0;
  MoreProduct({super.key,required this.catagari});

  State<MoreProduct> createState() => MoreProductState();
}

class MoreProductState extends State<MoreProduct>{

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Home_page_state.catagaries[widget.catagari],
        ),
        backgroundColor:  AppColor.faintPink,
      ),
      body: GridView.builder(
        itemCount: Home_page_state.allImages[widget.catagari].length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
          ),
          itemBuilder: (context,index){
          return InkWell(
            onTap: (){
              Navigator.push(
                  context, 
                MaterialPageRoute(
                    builder: (context)=> CakeInfo(catagariShow: widget.catagari, index: index)
                )  
              );
            },
            child: Container(
              decoration: ScrollingImgDecoration.imgContainer,
              margin: EdgeInsets.all(5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  Home_page_state.allImages[widget.catagari][index],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ); 
          },
      ),
    );
  }
}