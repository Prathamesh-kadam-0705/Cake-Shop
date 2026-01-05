import 'package:flutter/material.dart';
import 'package:my_first_app/Home_Page.dart';
import 'package:my_first_app/LoginPage.dart';

class OwnerHomePage extends StatefulWidget{

  const OwnerHomePage({super.key});

  State<OwnerHomePage> createState() => OwnerHome();
}

class OwnerHome extends State<OwnerHomePage>{


  static var arrProductDescription = ["A rich and moist chocolate truffle cake made with premium cocoa,\nperfect for birthdays and special occasions.","A soft and delicious eggless chocolate cake made with high-quality ingredients.\n Perfect for vegetarians, birthdays, anniversaries, and special celebrations. \nRich taste, smooth texture, and freshly baked for every order.","A rich, moist chocolate cake with smooth frosting and intense cocoa flavor.\nPerfect for all celebrations and chocolate lovers."
  ,"A rich, moist chocolate cake with smooth frosting and intense cocoa flavor.\nPerfect for all celebrations and chocolate lovers.","A rich, moist chocolate cake with smooth frosting and intense cocoa flavor.\nPerfect for all celebrations and chocolate lovers.","A rich, moist chocolate cake with smooth frosting and intense cocoa flavor.\nPerfect for all celebrations and chocolate lovers.","A rich, moist chocolate cake with smooth frosting and intense cocoa flavor.\nPerfect for all celebrations and chocolate lovers.","A rich, moist chocolate cake with smooth frosting and intense cocoa flavor.\nPerfect for all celebrations and chocolate lovers.","A rich, moist chocolate cake with smooth frosting and intense cocoa flavor.\nPerfect for all celebrations and chocolate lovers."];
  //
  TextEditingController forProductName = TextEditingController();
  TextEditingController forProductPrice = TextEditingController();
  TextEditingController forProductType = TextEditingController();
  TextEditingController forProductDescription = TextEditingController();

  static int num=0;

  void dispose(){

    forProductName.dispose();
    forProductType.dispose();
    forProductPrice.dispose();
    forProductDescription.dispose();
    super.dispose();
  }

  Widget build(BuildContext cotext){

    return DefaultTabController(
      length: 4,
      child: Scaffold(

        appBar:AppBar(
          title: const Text(
            "Hellow Cake Maker",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.orange,
        ),

        bottomNavigationBar: const Material(
          child: SizedBox(
            height: 48,
            child: TabBar(
                labelStyle: TextStyle(
                    fontSize: 12
                ),
                unselectedLabelStyle: TextStyle(
                    fontSize: 11
                ),
                tabs: [
                  Tab(icon: Icon(Icons.home,size: 18,),text: "Home",),
                  Tab(icon:Icon(Icons.add,size: 18),text: "Add",),
                  Tab(icon: Icon(Icons.bar_chart,size: 18),text: "Chart",),
                  Tab(icon: Icon(Icons.person,size: 18),text: "Profile",),
                ]
            ),
          ),
        ),

        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Container(
                        height: 100,
                        width: 100,
                        child:CircleAvatar(
                          backgroundImage: AssetImage('assets/Kernal.png'),
                        ),
                      ),
                      Text("Radhe Radhe"
                      )
                    ],
                  ),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text(
                  'Logout'
                ),
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>const LoginPage())
                  );
                },
              )
            ],
          ),
        ),

        body: TabBarView(
            children: [
              SingleChildScrollView(


              ),

              SingleChildScrollView(

                child: Column(

                  children: [

                    TextField(
                      controller : forProductName,
                      decoration: InputDecoration(
                        labelText: "Enter Product Name",
                      ),
                    ),
                    const SizedBox(height: 15,),
                    TextField(
                      controller : forProductType,
                      decoration: InputDecoration(
                        labelText: "Enter Product Type",
                      ),
                    ),
                    const SizedBox(height: 15,),
                    TextField(
                      controller : forProductPrice,
                      decoration: InputDecoration(
                        labelText: "Enter Product Price",
                      ),
                    ),
                    const SizedBox(height: 15,),
                    TextField(
                      controller : forProductDescription,
                      decoration: InputDecoration(
                        labelText: "Enter Product Decription",
                      ),
                    ),
                    const SizedBox(height: 15,),
                    ElevatedButton(
                        onPressed: (){
                        String name = forProductName.text;
                        String type = forProductType.text;
                        String price = forProductPrice.text;
                        String discription = forProductDescription.text;

                        if(name == ""||price == "" || discription == ""){
                          return;
                        }
                        for(int i =0;i<Home_page_state.catagaries.length;i++){
                          if(type==Home_page_state.catagaries[i]){
                            num = i;
                            break;
                          }
                        }

                        Home_page_state.allProductName[num].add(name);
                        Home_page_state.allProdutPrice[num].add(price);
                        // arrProductDescription.add(discription);

                        forProductName.clear();
                        forProductPrice.clear();
                        forProductDescription.clear();
                        },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      child: const Text("Submit"),

                    )
                  ],
                ),
              ),

              SingleChildScrollView(

              ),

              SingleChildScrollView(

              )
            ]
        ),

      ),



    );
  }
}