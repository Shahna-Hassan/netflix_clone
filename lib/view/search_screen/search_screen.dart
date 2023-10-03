import 'package:flutter/material.dart';
class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
List names=["Citation","Oloture","The Setup","Breaking Bad","Ozark","The Governor","Your Excellency"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 44,),

                
                  Container(
                    color:Colors.grey[600] ,
      
      child: TextField(
        
        decoration: InputDecoration(
         hintStyle: TextStyle(color: Colors.white),
          hintText: 'Search for a show, movie, genre, e.t.c',
          prefixIcon: Icon(Icons.search,color: Colors.white,),
          suffixIcon: Icon(Icons.mic,color: Colors.white)
        ),
      ),
    ),
    SizedBox(height: 10,),

    Row(mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text("Top Searches", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),),
      ],
    ),
    
    ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
       
      itemCount: 7,itemBuilder: (context, index) {
      return Column(
        children: [
          Container(
            

            color: Colors.grey,
            child: 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height:100,
                      width: 150,
                      child: Image(fit: BoxFit.cover,image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFLF4klfO9RuQExlL6-72868hVfgx-e72imA&usqp=CAU"))),
                  Text(names[index],style: TextStyle(color: Colors.white,fontSize: 20)),
                   Icon(Icons.play_circle),
                  
                  ],
                ),
                   
                  
                
              
              
            
          ),
          SizedBox(height: 10,)
        ],
      );
    },)
                ],
                
              ),

          
            ),
          ),
        ],
      ),
    );
  }
}