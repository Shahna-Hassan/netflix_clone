import 'package:flutter/material.dart';
class ConstList extends StatelessWidget {
   ConstList({super.key});
  List<String> images=["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5qEvOOfAOtJ1w5YYguKD7en0I1hwJfSZPfA&usqp=CAU","https://hips.hearstapps.com/hmg-prod/images/netflix-kids-movies-miraculous-64b5ba9989d3f.jpeg?crop=1xw:1xh;center,top&resize=980:*","https://hips.hearstapps.com/hmg-prod/images/the-bad-guys-64b0484320e91.jpg?crop=1xw:1xh;center,top&resize=980:*","https://hips.hearstapps.com/hmg-prod/images/best-kids-movies-netflix-feel-the-beat-1602203734.jpeg?crop=1xw:1xh;center,top&resize=980:*","https://hips.hearstapps.com/hmg-prod/images/barbie-mermaid-power-64b04a2b15c7f.jpeg?crop=1xw:1xh;center,top&resize=980:*"];

  @override
  Widget build(BuildContext context) {
    return  Container(
               height: MediaQuery.of(context).size.height*.3,
                child: ListView.builder(
                  
                  scrollDirection: Axis.horizontal,itemCount: 5,itemBuilder: (context, index) {
                  return Row(
                    children: [
                     SizedBox(width: 13,),
                    
                      Container(
                        height: MediaQuery.of(context).size.height*.3,
                          width: 150,
                        child: Image(image: NetworkImage(images[index])),
                      ),
                        SizedBox(width: 1,),

                    ],

                  );

                },),
              );
  }
}