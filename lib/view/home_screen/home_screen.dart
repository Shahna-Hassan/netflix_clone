import 'package:flutter/material.dart';

import 'const_list.dart';
import 'package:carousel_slider/carousel_slider.dart';




class HomePage extends StatefulWidget {
   HomePage({super.key});
  
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> img=["https://hips.hearstapps.com/hmg-prod/images/best-kids-movies-netflix-klaus-1585688353.png?crop=1xw:1xh;center,top&resize=980:*","https://hips.hearstapps.com/hmg-prod/images/best-kids-movies-netflix-1558103565.jpg?crop=1xw:1xh;center,top&resize=980:*","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU2zE_z0WUKORgK1tY6o1KiTtpPGDpTwxpVg&usqp=CAU","https://hips.hearstapps.com/hmg-prod/images/netflix-movies-kids-1558103695.jpg?crop=1xw:1xh;center,top&resize=980:*","https://hips.hearstapps.com/hmg-prod/images/the-lorax-64b02f548dc2c.png?crop=1xw:1xh;center,top&resize=980:*","https://hips.hearstapps.com/hmg-prod/images/minions-rise-of-gru-64b02d8a94cfd.png?crop=1xw:1xh;center,top&resize=980:*","https://hips.hearstapps.com/hmg-prod/images/best-kids-movies-netflix-duck-duck-goose-1585682576.png?crop=1xw:1xh;center,top&resize=980:*","https://hips.hearstapps.com/hmg-prod/images/matilda-the-musical-64b045a78d60c.jpeg?crop=1xw:1xh;center,top&resize=980:*"];





 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      backgroundColor: Colors.black,
      body: 
     
      
          Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  
                  child: Column(
                    children: [SizedBox(height: 35,),
                      CarouselSlider(
   items: [Container(width: double.infinity,
                        
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/rectangle_26.png"), fit: BoxFit.fill)),
                        child: Column(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image(image: AssetImage("assets/group_2.png")),
                          
                          ],
                          
                        ),
                  
                      ),Container(
                        
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/rectangle_26.png"), fit: BoxFit.fill)),
                        child: Column(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image(image: AssetImage("assets/group_2.png")),
                          
                          ],
                          
                        ),
                  
                      ),Container(
                        
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/rectangle_26.png"), fit: BoxFit.fill)),
                        child: Column(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image(image: AssetImage("assets/group_2.png")),
                          
                          ],
                          
                        ),
                  
                      ),],
   options: CarouselOptions(
    height: 400,
    
     aspectRatio:1,
    viewportFraction: 1,
    initialPage: 0,
    enableInfiniteScroll: true,
    reverse: false,
    autoPlay: true,
    autoPlayInterval: Duration(seconds: 3),
    autoPlayAnimationDuration: Duration(milliseconds: 800),
    autoPlayCurve: Curves.easeInCubic,
    
    enlargeCenterPage: true,
    enlargeFactor: 0.5,
   
    scrollDirection: Axis.horizontal,
   )
 ),




                      
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage("assets/group_16.png")),
                          Image(image: AssetImage("assets/2_Nigeria_Today.png"))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.add, color: Colors.white),
                              Text("My List", style: TextStyle(color: Colors.white),)
                            ],
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 230, 224, 224)),
                            onPressed: () {
                            
                          }, child: Row(
                            children: [
                              Icon(Icons.play_arrow, color: Colors.black),
                              Text("Play", style: TextStyle(color: Colors.black),)
                            ],
                          )
                          ),
                           Column(
                            children: [
                              Icon(Icons.info, color: Colors.white),
                              Text("Info", style: TextStyle(color: Colors.white),)
                            ],
                          ),
                      
                        ],
                      ),
                      
                      
                      
                    
                          SizedBox(height: 15,),
                        
                      
                        
                      
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Preview", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                          ),
                        ],
                      ),
                      // SizedBox(height: 3,),
                        
                      
                      Container(
                        width: MediaQuery.of(context).size.width*1,
                        height:MediaQuery.of(context).size.height*.2 ,
                        child: ListView.builder(
                         
                          scrollDirection: Axis.horizontal,
                          itemCount: 8,itemBuilder: (context, index) {
                          return Row(
                            children: [SizedBox(width: 5,),
                              CircleAvatar(
                                backgroundImage: NetworkImage(img[index]),
                        radius: 55,
                        
                        
                              ),
                            ],
                          );
                          
                        },),
                      ),
                      SizedBox(height: 10,),
                      Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Continue Watching", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                          ),
                        ],
                      ),
                      
                      ConstList(),
                      SizedBox(height: 10,),
                      Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Popular on Netflix", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                              ),
                        ],
                      ),
                          ConstList(),
                      SizedBox(height: 10,),
                      
                      
                          Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Trending Now", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                              ),
                            ],
                          ),
                          ConstList(),
                      SizedBox(height: 10,),
                      
                      
                          Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Top 10 in Nigeria Today", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                              ),
                            ],
                          ),
                          ConstList(),
                      SizedBox(height: 10,),
                      
                      
                          Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("My List", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                              ),
                            ],
                          ),
                          ConstList(),
                      SizedBox(height: 10,),
                      
                      
                          Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("African Movies", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                              ),
                            ],
                          ),
                          ConstList(),
                      SizedBox(height: 10,),
                      
                      
                          Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Nollywood Movies &TV", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                              ),
                            ],
                          ),
                          ConstList(),
                      SizedBox(height: 10,),
                      
                      
                          Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Netflix Originals", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                              ),
                            ],
                          ),
                          ConstList(),
                      SizedBox(height: 10,),
                      
                      
                          Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Watch It Again", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                              ),
                            ],
                          ),
                          ConstList(),
                      SizedBox(height: 10,),
                      
                      
                      
                          Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("New Releases", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                              ),
                            ],
                          ),
                          ConstList(),
                      SizedBox(height: 10,),
                      
                      
                          Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("TV Thrillers & Mysteries", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                              ),
                            ],
                          ),
                          ConstList(),
                      SizedBox(height: 10,),
                      
                      
                          Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("US TV Shows", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                              ),
                            ],
                          ),
                          ConstList(),
                      SizedBox(height: 10,),
                      
                      
                        
                      
                        
                      
                    ],
                  ),
                ),
              ),
               ],
          ),
        
      
    );
  }
}