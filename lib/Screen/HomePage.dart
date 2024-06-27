

import 'dart:ui';

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> lists=['Mountain','Waterfall','River','Forest'];
 var image=['https://s3-alpha-sig.figma.com/img/4b71/104c/fa1fcf5c75991d363c1f2b6433c0e424?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=RSD0xB0oA8s2qadrKgbFL1QMkBBc-vNScoyKgUCbc8dYWQOSBMN0PAQzha0hliCJj2vrBvi5fBrBx07amEtThZBEnS21X8AUFIg0EM5gfW5nHXHMrDzPDOpjHmjA0rH9Tt2qSkWGsgPoImfxCL~ToDgpbFb5DPl4mQgDmeJhX9XQ~wq9SQbRyWr5JLX-C5jh3E6p35l-M9D4asluiTt6SQtLHPJ5AyKuuHf3GQ1XyqwTVz1noWj8YkPA3c2Ua6N4b-xvfiWvWoq-01l-zOKw75fZAIRrzbs3NB5btIhH4dlN75p96Xkes6Qq7fNMyBu49qZ5zjX-1jHmGFs0oA1eqw__',
   'https://freedomdestinations.co.uk/wp-content/uploads/Image4-Bali-rice-terrace.jpg',
   'https://a.cdn-hotels.com/gdcs/production169/d674/7a1e2ab1-58fb-4fac-85b7-529920beac73.jpg',
   'https://s3-alpha-sig.figma.com/img/e063/78c7/672fd5f49339cfdaec25fd0a6d7610cd?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=QEbsd0hT3zTSi5WYDA6oiCDZNbiuGYfeVNsJ5g6jlBlMGzWy06109CpQjFBmoe3BE6TwdVuMMjsXzfLL7eak5RAMhVrNuG4Pzq8nrGmnY8gpJFajDtEoHnrjFJce-VufDyzRkr5uYBJ5q1kBo8KKjtD1P9LtoDzwN95iPnwEtgQqIvsdJAn4uQhlmG~j-5CQTNL62Q0zCGfn0RJ0NUObRpeZQY-4ih-OpXBjv2qmc9XeWTBbjCh7vljoppvbGJl-eQCmNXtZiy8Jia1htXUdob9ou2lNjFAraq3R9p9wi4JXR~UH7EzYKq1ndwbSxHkPCtjxLQfEG41tgI-zJjERSA__'
       ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
         AppBar(
          title: Center(
            child: Column(
              children: [
                const Text('Current Location',style: TextStyle(fontFamily:'Gilroy',fontWeight:FontWeight.w400,fontSize: 12  ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on,color: Colors.blue[900],),
                    const Text('DenPasar,Bali',style: TextStyle(fontSize:14 ,fontWeight:FontWeight.w600 ,fontFamily:'Gilroy' ),),
                  ],
                )
              ],
            ),
          ),
            leading: Container(
              width:36 ,
              height: 36,
              decoration: const BoxDecoration(
                color:Color.fromRGBO(246, 248, 250, 1),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
            child:Icon(Icons.menu,color:Colors.grey[500])
            ),
            actions: [
              const CircleAvatar()
            ]
         ),
      body:
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Category',style: TextStyle(
                    fontFamily: 'Gilroy',fontWeight: FontWeight.w700,color: Color.fromRGBO(42, 42, 42, 1)

              ),),
                  GestureDetector(
                    onTap:(){
                    } ,
                    child: const Row(
                      children: [
                        Text('View all',style: TextStyle(
                          fontFamily: 'Gilroy',fontSize: 12,fontWeight: FontWeight.w500,
                        )
                          ,),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_circle_right_outlined
                        ),
                      ],
                    ),
                  )
                ],
              ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: SizedBox(
                width: 350,
                height: 38,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                    itemBuilder:(context,i){
                      return
                        Row(
                          children: [
                            Container(
                              width: 103,
                              height: 38,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromRGBO(246, 248, 250, 1),
                                  shape: BoxShape.rectangle
                              ),
                              child: Center(child: Text(lists[i]))
                            ),
                          ],
                        );
                    }  ,
                    separatorBuilder:(context,i){
                    return const SizedBox(
                      width: 10,
                    );
                    },
                    itemCount: lists.length,
                ),
              ),
            ),Padding(
          padding: const EdgeInsets.all(15),
          child: SizedBox(
            width: 350,
            height: 143,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder:(context,i){
                  return
                    Row(
                      children: [
                        Container(
                            width: 222,
                            height: 143,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(100)),
                                color: Color.fromRGBO(246, 248, 250, 1),
                                shape: BoxShape.rectangle,
                                ),

                            child: Center(
                                child:  ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                    child: Image.network(image[i],fit: BoxFit.fill,))
                            ),
                        ),

                      ],
                    );
                }  ,
                separatorBuilder:(context,i){
                  return const SizedBox(
                    width: 11,
                  );
                },
                itemCount: image.length
            ),
          ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Popular Destination',style: TextStyle(
                      fontFamily: 'Gilroy',fontWeight: FontWeight.w700,color: Color.fromRGBO(42, 42, 42, 1)

                  ),),
                  GestureDetector(
                    onTap:(){} ,
                    child: const Row(
                      children: [
                        Text('View all',style: TextStyle(
                          fontFamily: 'Gilroy',fontSize: 12,fontWeight: FontWeight.w500,
                        )
                          ,),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                            Icons.arrow_circle_right_outlined
                        ),
                      ],
                    ),
                  )
                ],
              ),

                ]
              ),

          ),

    );
  }
}
