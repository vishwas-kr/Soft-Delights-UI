import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:soft_delights/main_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image:AssetImage('images/background.png'),
            fit: BoxFit.fitHeight
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ZoomIn(child: Image(image:AssetImage('images/logo7.png'),height: 400,),duration: Duration(milliseconds: 2000),),
            SizedBox(
              height: MediaQuery.of(context).size.height *0.02,
            ),
            ZoomIn(child: Text('Soft Delights',style: TextStyle(fontFamily: 'Lora',fontSize: 28))),
            SizedBox(height:10),
            FadeInUpBig(
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MainScreen()));
              },
                  child: Text('Get Started',style:TextStyle(fontSize:16,color: Colors.black87,fontFamily: 'Sora'),),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color(0xffFBDA88)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Colors.black87)
                  )
                )
              ),),
            )
          ],
        ),
      ),
    );
  }
}
