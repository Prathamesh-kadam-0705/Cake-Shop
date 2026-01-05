import 'package:flutter/material.dart';
import 'package:my_first_app/OwnerHomePage.dart';

class LoginForOwner extends StatefulWidget{

  const LoginForOwner({super.key});

  State<LoginForOwner> createState() => LoginOwner();
}

class LoginOwner extends State<LoginForOwner>{

  final TextEditingController OwnerNameController = TextEditingController();
  final TextEditingController OwnerPasswordController = TextEditingController();

  @override
  void dispose() {
    OwnerNameController.dispose();
    OwnerPasswordController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(

        child: Container(

          padding: const EdgeInsets.all(30),
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
                color: Colors.grey,
                width: 1
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(

            children: [

              Text(
                "Login",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),

              const SizedBox(height: 10,),

              TextField(
                controller: OwnerNameController,
                style: TextStyle(
                    fontSize: 15
                ),
                decoration: InputDecoration(
                  labelText: "Enter Username",
                  contentPadding: const EdgeInsets.all(5),
                  icon: Icon(Icons.person,

                  ),
                ),
              ),
              const SizedBox(height: 10,),

              TextField(
                controller: OwnerPasswordController,
                obscureText: true,
                style: TextStyle(
                    fontSize: 14
                ),
                decoration: InputDecoration(
                  labelText: "Enter PassWord",
                  contentPadding: const EdgeInsets.only(
                    left: 5,
                  ),
                  icon: Icon(Icons.lock),

                ),
              ),

              const SizedBox(height:25,),

              OutlinedButton(
                onPressed: () {
                  String OwnerName = OwnerNameController.text.trim();
                  String OwnerPassword = OwnerPasswordController.text;

                  if (OwnerName == "" && OwnerPassword == "") {
                    print("Enter Username and PassWord");
                    return;
                  }

                  if(OwnerName=="Admin" && OwnerPassword == "Admin@123"){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OwnerHomePage()),
                    );
                  }


                },
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent
                ),
                child: const Text("Login"),
              ),


            ],
          ),
        ),

      ),
    );
  }
}