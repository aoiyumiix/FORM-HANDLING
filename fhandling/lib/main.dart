import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage());
  }
}

class FirstPage extends StatelessWidget {
  
 final emailController = TextEditingController();
 final passController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Login"),
            backgroundColor: Colors.pink,
            leading: Icon(Icons.code)
       
    ),
        body: Form(
         child: ListView(
           padding: const EdgeInsets.all(20),
           children:[
             
             
             
             
              TextFormField(
                controller: emailController,
                decoration : InputDecoration(
                labelText: "Email Address:"
                ),
               keyboardType: TextInputType.emailAddress
            ),
             
              TextFormField(
                 controller: passController,
                 decoration : InputDecoration(
                 labelText: "Password:"
                ),
               keyboardType: TextInputType.text
            ),
             
                  SizedBox(height:20),
             
             ElevatedButton(
               
               
               onPressed: (){
               final emailAddress = emailController.text;
                  print('Email Address: $emailAddress');
                        
               final text = passController.text;
                  print('Password: $text');         
               
               },
          
             child: (
               const Text("Submit")
             
               )
             )
          ]  
        )  
      )      
    );
  }      
}