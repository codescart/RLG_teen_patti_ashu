import 'package:flutter/material.dart';
class Question_mark extends StatefulWidget {
  const Question_mark({Key? key}) : super(key: key);

  @override
  State<Question_mark> createState() => _Question_markState();
}

class _Question_markState extends State<Question_mark> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Container(
        height: MediaQuery.of(context).size.height*0.8,
        width:  MediaQuery.of(context).size.width*0.7,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/questable.png"),
                fit: BoxFit.fill)),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.015),
            Text("Rules",style: TextStyle(color: Color(0xff640700),fontSize: 26* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
            SizedBox(height: MediaQuery.of(context).size.height*0.10),
            Text("*  Every player start with same chips.",style: TextStyle(color: Color(0xffffb217),fontSize: 17* MediaQuery.textScaleFactorOf(context)),),
            SizedBox(height: MediaQuery.of(context).size.height*0.0150),
            Text("   *  Final chip balance determines ranks.",style: TextStyle(color: Color(0xffffb217),fontSize: 17* MediaQuery.textScaleFactorOf(context)),),
            SizedBox(height: MediaQuery.of(context).size.height*0.0150),
            Text("             *  Boot amount increases as the tournament\n                 progresses!",style: TextStyle(color: Color(0xffffb217),fontSize: 17* MediaQuery.textScaleFactorOf(context)),),
            SizedBox(height: MediaQuery.of(context).size.height*0.10),
            InkWell(
                onTap: (){Navigator.pop(context);},
                child: Image.asset("assets/images/okaybutton.png",height: 70,width: 100,))




          ],
        ),
      ),
    );
  }
}
