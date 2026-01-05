import 'package:flutter/material.dart';
import 'package:my_first_app/Home_page.dart';
import 'package:my_first_app/Ragistration_form.dart';
import 'package:my_first_app/OwnerLoginPage.dart';

class LoginPage extends StatefulWidget{

  const LoginPage({super.key});

  State<LoginPage> createState() => Login();
}

class Login extends State<LoginPage> {

  final TextEditingController UserNameController = TextEditingController();
  final TextEditingController PasswordController = TextEditingController();

  static List<String> forUserName = [];
  static List<String> forPassword = [];

  @override
  void dispose() {
    UserNameController.dispose();
    PasswordController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(

        child: Container(

          padding: const EdgeInsets.all(30),
          width: 300,
          height: 435,
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
                controller: UserNameController,
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
                controller: PasswordController,
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

              const SizedBox(height: 15,),

              OutlinedButton(
                onPressed: () {
                  String userName = UserNameController.text.trim();
                  String password = PasswordController.text;

                  if (userName == "" && password == "") {
                    print("Enter Username and PassWord");
                    return;
                  }
                  int i =0;
                  while(i<forUserName.length){

                    if(forUserName[i]==userName&&forPassword[i]==password){
                      FocusScope.of(context).unfocus();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>Home_page()),
                      );
                      break;
                    }
                    i++;
                  }
                  if(i==forUserName.length){

                    print("wrong crediantial!");
                    return;
                  }

                },
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent
                ),
                child: const Text("Login"),
              ),

              const SizedBox(height: 15,),

              TextButton(
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Ragistration_form())
                    );
                  },
                  child: Text(
                    "Don't have an account? Sign up!",
                    style: TextStyle(
                        color: Colors.red
                    ),
                  )
              ),


              const SizedBox(height: 10,),

              TextButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=> LoginForOwner())
                    );
                  },
                  child: Text(
                    "Are you owner",
                    style:TextStyle(
                      color: Colors.orange
                    ),
                  ),
              )
            ],
          ),
        ),

      ),
    );
  }
}