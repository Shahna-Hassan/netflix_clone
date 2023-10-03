import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ComingSoon extends StatefulWidget {
  const ComingSoon({super.key});

  @override
  State<ComingSoon> createState() => _ComingSoonState();
}
 
class _ComingSoonState extends State<ComingSoon> {



  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'VAdGW7QDJiU',
    flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
    ),
                      );
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child:Column(
          children: [SizedBox(height: 44,),
            Row(
              children: [
                Icon(Icons.notifications,color: Colors.red),
                SizedBox(width: 10,),
                Text("Notifications",style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)
              ],
            ),
            SizedBox(height: 10,),
            Container(
              height: 65,
              width: 375,
              color: Color(0xff424242),
              child: Row(
                children: [
                  Container(
                    height: 55,
                    width: 113,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Image(fit: BoxFit.fitHeight,image: AssetImage("assets/rectangle_20.png")),
                    )),
                    SizedBox(width: 8,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text("New Arrival", style: TextStyle(color: Color(0xffFFFFFF),fontWeight: FontWeight.w500),),
                        ),
                         Padding(
                           padding: const EdgeInsets.all(2.0),
                           child: Text("El Chapo",style: TextStyle(color: Color(0xffFFFFFF),fontWeight: FontWeight.w300)),
                         ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text("Nov 6",style: TextStyle(color: Color(0xffFFFFFF),fontWeight: FontWeight.w200)),
                          ),
                      ],
                    )
                ],
              ),
            ),
            Container(
              height: 65,
              width: 375,
              color: Color(0xff424242),
              child: Row(
                children: [
                  Container(
                    height: 55,
                    width: 113,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Image(fit: BoxFit.fitHeight,image: AssetImage("assets/rect_2.png")),
                    )),
                    SizedBox(width: 8,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text("New Arrival", style: TextStyle(color: Color(0xffFFFFFF),fontWeight: FontWeight.w500),),
                        ),
                         Padding(
                           padding: const EdgeInsets.all(2.0),
                           child: Text("Peaky Blinders",style: TextStyle(color: Color(0xffFFFFFF),fontWeight: FontWeight.w300)),
                         ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text("Nov 6",style: TextStyle(color: Color(0xffFFFFFF),fontWeight: FontWeight.w200)),
                          ),
                      ],
                    )
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  height: 385,
                  width: 375,
                  child: Column(
                    children: [
                      Container(
                        height: 195,
                        width: 375,
                        child: 
                        // Image(image: AssetImage("assets/rectangle_22.png") )
                       

YoutubePlayer(
    controller: _controller,
    showVideoProgressIndicator: true,
   
  
   
),
                        
                        ),
                        SizedBox(height: 5,),
                        Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              children: [
                                Icon(Icons.notifications,color: Colors.white,),
                                SizedBox(height: 3,),  
                            Text("Remind Me",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 14))
                              ],
                            ),
                            SizedBox(width: 25,),
                             Column(
                               children: [
                                 Icon(Icons.share,color: Colors.white),
                                  SizedBox(height: 3,),  
                                 Text("Share",style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300, fontSize: 14),)
                               ],
                             ),
                            
                          ],
                        ),
                        SizedBox(height: 3,),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Season 1 Coming December 14",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white70,fontSize: 11.4),),
                            SizedBox(height: 5,),
                            Text("Castle & Castle",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white,fontSize: 18.6),),
                              SizedBox(height: 5,),
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamusbibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,id ut ipsum aliquam  enim non posuere pulvinar diam.",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white70,fontSize: 11.4))
                          ],
                        )
                    ],
                  ),

                );
              
            },)
          ],
        ) ,
      ),
    );
  }
}