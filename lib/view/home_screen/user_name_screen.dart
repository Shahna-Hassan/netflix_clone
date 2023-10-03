import 'package:flutter/material.dart';


import 'bottomnavigation.dart';

class UserNameScreen extends StatefulWidget {
  const UserNameScreen({super.key});

  @override
  State<UserNameScreen> createState() => _UserNameScreenState();
}

class _UserNameScreenState extends State<UserNameScreen> {
  List text=["Emenalo","Onyeka","Thelma","Kids", "Add Profile"];
    List img=["assets/group_66.png","assets/rectangle_3.png","assets/rectangle_4.png","assets/rectangle_5.png","assets/group_1.png"];

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Center(
          child: Container(
            height:38,
            width: 138,
            child: Image.asset("assets/logos_netflix.png") ,
          ),
        ),
        actions: [Icon(Icons.edit)],
      ),
      body: Center(
        child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),  shrinkWrap: true,padding: EdgeInsets.all(20),itemCount: text.length, itemBuilder: (context, index) {
          return Container(
            height: 121,
            width: 100,
            child: 
            InkWell(
              child: Column(children: [
                Image.asset(img[index]),
                SizedBox(height: 5,),
                Text(text[index], style: TextStyle(color: Colors.white, fontSize: 13),)
                ]) ,onTap: () => Navigator.push(context,
        MaterialPageRoute(builder: (context) => BottomNavigation(), ),
            
           
            
            
          )));
        },),
      )
      
      



    );
  }
}

 
             