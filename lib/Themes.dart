import 'dart:ui';
import 'package:flutter/material.dart';

class AppColor{
  static Color faintPink =Colors.pink.shade300;
}

TextStyle Header1({Color color = Colors.white}){
  return TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: color
  );
}

TextStyle subTitel(){
  return TextStyle(
    fontSize: 10,
    color: Colors.grey
  );
}
TextStyle Header2({Color color = Colors.white}){
  return TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: color
  );
}

class ContainerStyle{

  static BoxDecoration iconContainer = BoxDecoration(

    color: Colors.grey[100],
    borderRadius: BorderRadius.circular(10),
    // boxShadow: [
    //   BoxShadow(
    //     blurRadius: 10,
    //     // offset: Offset(0, 5),
    //     color: Colors.black
    //   )
    // ]
  );
  static EdgeInsets iconPadding = EdgeInsets.all(5);
  static EdgeInsets iconMargin = EdgeInsets.all(5);
}
class ScrollingImgDecoration{

  static BoxDecoration imgContainer = BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      // boxShadow: [
      //   BoxShadow(
      //       blurRadius: 10,
      //       // offset: Offset(0, 5),
      //       color: Colors.black
      //   )
      // ]
  );
  static EdgeInsets imgMargin = EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5);

}

class ForOutLinedButton{

  static ButtonStyle textTheme = OutlinedButton.styleFrom(

    padding: EdgeInsets.symmetric(horizontal: 12,vertical: 6),

  );
}

class forOutLinedButton2{

  static BoxDecoration outlineButtoninfo({Color color = Colors.white}) {
      return BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black,width: 1),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black,
        //     blurRadius: 10,
        //     // offset: Offset(0, 3)
        //   )
        // ]
      );

  }
  static EdgeInsets btnMargin= EdgeInsets.all(10);
  static double btnHeight = 50;
  static double btnWidth= 150;
}



