
import 'package:challange_project_1/Screen/homeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final GlobalKey<FormState> formKey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Center(child:
        Text(
          "Login Screen"
        )),
      ),
     body:
     Form(
       key:formKey ,
       child: Center(
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               TextFormField(
                 keyboardType: TextInputType.emailAddress,
                 decoration:const InputDecoration(
                   hintText: "Email",
                   labelText: "Email Address",
                   prefixIcon: Icon( Icons.mail),
                   enabledBorder:OutlineInputBorder(
                     borderRadius: BorderRadius.all( Radius.circular(4))
                   ) ,
                   focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.all( Radius.circular(4)),
                     borderSide: BorderSide(width: 2),
                   ),
                 ),
               ),
               SizedBox(height: 20,),
               TextFormField(
                 keyboardType: TextInputType.visiblePassword,
                 obscureText: true,
                 decoration:InputDecoration(
                   hintText: "Password",
                   labelText: "Password",
                   prefixIcon: Icon( Icons.password),
                   enabledBorder:OutlineInputBorder(
                       borderRadius: BorderRadius.all( Radius.circular(4))
                   ) ,
                   focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.all( Radius.circular(4)),
                     borderSide: BorderSide(width: 2),

                   ),
                 ),
                 validator: (value){
                   if(value!.isEmpty){
                     return "Enter your Passward";
                   }
                 },
               ),
               SizedBox(height: 20,),
                  ElevatedButton(
                     onPressed: (){
                       bool valid =formKey.currentState!.validate();
                       if(valid==true){
                         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                       }
                     },
                     child: Text("Login")),
                ],
           ),
         ),
       ),
     )
    );
  }
}
