import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int num=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          'Home Page',style:TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            fontStyle: FontStyle.normal,
            color: Colors.white
        ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(   backgroundColor: Colors.brown.shade800,   child:
            const
            Text(
                'AH'
            ), ),
            SizedBox(height: 20,),
            Text("Nancy Alaa",style:TextStyle(
                fontSize: 20,fontWeight: FontWeight.w600
            ),
            ),
            SizedBox(height: 20,),
            Text("Followers",style: TextStyle(
                fontWeight: FontWeight.bold
                ,fontSize: 15
            ),),
            Text("$num",style: TextStyle(
                fontWeight: FontWeight.w500
            ),),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                setState(() {
                  num+=1;
                });
              },
              child: Container(
                  height: 50,
                  width: 150,
                  child: Center(child:
                  Text("Follow")) ,
                  decoration:BoxDecoration(
                      borderRadius: BorderRadiusDirectional.all(Radius.elliptical(20, 20)),
                      color: Colors.cyan
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}