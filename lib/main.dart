import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomeScreen() ,
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
int num=1;

class _HomeScreenState extends State<HomeScreen> {
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
            Container(
              width: 150,
              height: 150,
              child: Icon(Icons.person,size:50 ,),
              decoration:const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(75)),
                color: Colors.grey
              ),
            ),
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
            Text(num.toString(),style: TextStyle(
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
            )
          ],
        ),
      ),
    );
  }
}

