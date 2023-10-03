import 'package:flutter/material.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({super.key});

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
   

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 20,),
                    Text("Smart Downloads",style: TextStyle(fontSize: 15, color: Colors.white,), ),
                  ],
                ),
                SizedBox(height: 35,),
              Text("Introducing Downloads For You", style: TextStyle(color: Colors.white , fontSize: 20, fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamusbibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,id ut ipsum aliquam  enim non posuere pulvinar diam.",style: TextStyle(height: 2.0,fontSize: 10, color: Colors.white),),
              SizedBox(height: 25,),
              Center(
                child: CircleAvatar(
                  radius: 100,
                  backgroundColor: Color(0xff424242),
                  ),
              ),
              SizedBox(height: 25,),
              Container(width: 353,
              height: 41,
                child: ElevatedButton(onPressed: () {
                  
                }, child: Text("SETUP", style: TextStyle(color: Colors.white),)),
              ),
              SizedBox(height: 50,),
              Center(
                child: Container(
                  width: 240,
                  height: 33,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Color(0xff424242))
                    ),
                    onPressed: () {
                    
                  }, child: Text("Find Something to Download", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}