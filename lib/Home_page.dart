import 'package:flutter/material.dart';
import 'package:my_first_app/CakeInfo.dart';
import 'package:my_first_app/Themes.dart';
import 'package:my_first_app/MoreProduct.dart';
import 'package:my_first_app/AddToCard.dart';

class Home_page extends StatefulWidget{

  // String userName;
  const Home_page({super.key});

  State<Home_page> createState() => Home_page_state();
}
class Home_page_state extends State<Home_page>{

  static int catagariShow =0;

  static List<String> imagesList1 = [
    'assets/cake1.png',
    'assets/cake2.png',
    'assets/cake3.png',
    'assets/cake4.png',
    'assets/cake5.png',
    'assets/cake6.png',
    'assets/cake7.png',
    'assets/cake8.png',
    'assets/cake9.png'
  ];

  static var arrProductName1 =["Chocolate Truffle Cake","Chocolate Cake",'Brownie Cake','Chocolava Cake','Coffee Cake','Heart-Shaped Cake','Ice Cream Cake','Jar Cake','King Cake'];
  static var arrProductPrice1 = ["499","399","799",'999','799','849','649','1111','1599'];

  static List<String> imagesList2 = [
    'assets/cake10.png',
    'assets/cake11.png',
    'assets/cake12.png',
    'assets/cake13.png',
    'assets/cake14.png',
    'assets/cake15.png',
    'assets/cake16.png',
    'assets/cake17.png',
  ];

  static var arrProductName2 =["Chocolate Truffle Cream Cake","Happy New Year Cake",'Chocolate Truffle Cake','Blueberry Cake','New Year Cup Cake','Black Forest Cake','New Year Butterscotch Cake','Caramel Fudge Cake'];
  static var arrProductPrice2 = ["499","1258","579",'479','849','569','849','599','799'];

  static List<String> imagesList3 = [
    'assets/cake18.png',
    'assets/cake19.png',
    'assets/cake20.png',
    'assets/cake21.png',
    'assets/cake22.png',
    'assets/cake23.png',
    'assets/cake24.png',
  ];
  static var arrProductName3 =['Rich Chocolate Walnut Cake',"Mixed Fruit Dry Cake","Fings and Honey Dry Cake",'Almond Dry Cake','Red Velvet Cake','Banana Cake','Charlotte Cake'];
  static var arrProductPrice3 = ['799',"480","659","949",'679','799','849'];


  static List<String> imagesList4 = [
    'assets/cake25.png',
    'assets/cake26.png',
    'assets/cake27.png',
    'assets/cake28.png',
    'assets/cake29.png',
    'assets/cake30.png',
    'assets/cake31.png',
    'assets/cake32.png',
    'assets/cake33.png',
    'assets/cake34.png',
    'assets/cake35.png',
    'assets/cake36.png',
    'assets/cake37.png',
    'assets/cake38.png',
    'assets/cake39.png',
    'assets/cake40.png',
  ];
  static var arrProductName4 =["Rich Truffle Celebration Cake","Velvety Truffle Cake",'Xmas Holiday Cake','Choco Truffle Cake','Black Forest Cake','Black forest Cake','ButterScotch Nuggests Cake','Velvety Truffle Cake','Milk Truffle Pastry','Caramelized Cheesecake','Black Forest Cream Cake','Pineapple Cake','Butterscotch Cake','Milk Truffle Cake','Nutella Cheesecake Slice','Tiramisu Dessert Cake'];
  static var arrProductPrice4 = ["649","999","849",'519','699','569','549','999','299','439','449','549','599','589','499','349'];

  static List<List<String>> allImages = [
    imagesList1,
    imagesList2,
    imagesList3,
    imagesList4
  ];

  static List<List<String>> allProductName = [
    arrProductName1,
    arrProductName2,
    arrProductName3,
    arrProductName4
  ];

  static List<List<String>> allProdutPrice = [
    arrProductPrice1,
    arrProductPrice2,
    arrProductPrice3,
    arrProductPrice4
  ];

  static List<String> catagaries =[
    'New',
    'Best Sellers',
    'Healthy',
    'in 60 min',
    'Luxy cake ',
    'Half Cake',
    'Cup cake',
    'Bento cake',
    'Jar cakes'
  ];

  static List<int> favoritCatagari = [];
  static List<int> favoritIndex = [];

  Widget build(BuildContext context){

    return Scaffold(
      
      appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 170,
        title:Container(
         decoration:BoxDecoration(
              color: Colors.pink.shade300,
           borderRadius: BorderRadius.circular(20),
           boxShadow: [
             BoxShadow(
               color: Colors.black,
               offset: Offset(0, 5),
               blurRadius: 6
             )
           ]
           
         ),
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.all(2),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(3),
                    child: InkWell(
                      onTap: (){
                        print('tap on profile');
                      },
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/DogiDon.png'),
                            radius: 20,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'User Name',
                              style: Header1(),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
          
                    child:Row(
                      children: [
                        InkWell(
                          onTap : (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddToCard(),
                                ),
                            );
                          },
                          child: Container(
                            padding : ContainerStyle.iconPadding,
                            margin: ContainerStyle.iconMargin,
                            child: Icon(Icons.shop,
                            color:  AppColor.faintPink,
                            ),
                            decoration: ContainerStyle.iconContainer,
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            print('tap on notification');
                          },
                          child: Container(
                            padding : ContainerStyle.iconPadding,
                            margin: ContainerStyle.iconMargin,
                            child: Icon(Icons.notifications,
                              color:  AppColor.faintPink,
                            ),
                              decoration: ContainerStyle.iconContainer,
                          ),
                        )
                      ],
                    ) ,
                  )
                ],
              ),
              SizedBox(height: 6,),

              IgnorePointer(
                  child: TextField(
                    readOnly: true,                     // prevent typing
                    showCursor: false,                  // hide cursor
                    enableInteractiveSelection: false,  // disable selection
                    focusNode: AlwaysDisabledFocusNode(),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        ),
                        hintText: 'Search',
                        prefixIcon: Icon(Icons.search)
                    ),

                  )
              )

            ],
          ),
        )
        
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '   Special Cakes',
                style: Header1(color: Colors.black),
              ),
              SizedBox(height: 10,),
                SizedBox(
                  height: 200,

                  child: PageView.builder(
                      clipBehavior: Clip.none,
                    scrollDirection: Axis.horizontal,
                    itemCount: imagesList1.length,
                      itemBuilder: (context,index){
                      return Container(
                        decoration: ScrollingImgDecoration.imgContainer,
                        margin: ScrollingImgDecoration.imgMargin,
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context)=>CakeInfo(catagariShow: 0,index: index))
                              );
                            },
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              imagesList1[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                      }
                  ),
                ),

              SizedBox(height: 15,),
              Text(
                '   Catagaries',
                style:Header1(color: Colors.black) ,
              ),
              SizedBox(height: 15,),

              Container(

                child:Column(
                  children: [
                    SizedBox(
                      height:45,
                      child: ListView.builder(
                          itemCount: allImages.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context,index){
                            return InkWell(
                              onTap: (){
                                setState(() {
                                  catagariShow=index;
                                });

                              },
                              child: SizedBox(
                                height: 45,
                                width: 100,
                                child: Center(
                                  child: Container(
                                    decoration: forOutLinedButton2.outlineButtoninfo(),
                                    height: 30,
                                    margin: EdgeInsets.all(5),
                                    child: Center(
                                      child: Text(
                                          catagaries[index]
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }
                      ),
                    ),
                    GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                          childAspectRatio: 0.75,
                        ),
                        itemCount: 4,
                        itemBuilder: (context,index){
                          return Container(
                            child: InkWell(
                              onTap: (){
                                  Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (context)=>CakeInfo(catagariShow:catagariShow,index: index)
                                      )
                                  );
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.all(5),
                                      decoration: ScrollingImgDecoration.imgContainer,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          allImages[catagariShow][index],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Cake'
                                  )
                                ],
                              ),
                            ),
                          );
                        }
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                decoration: forOutLinedButton2.outlineButtoninfo(color: AppColor.faintPink),
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:(context)=>MoreProduct(catagari:catagariShow),
                        )
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Center(
                      child: Text(
                        'See More',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}