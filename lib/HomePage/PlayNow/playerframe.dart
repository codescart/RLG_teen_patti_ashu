import 'package:flutter/material.dart';


class Playerframe extends StatefulWidget {
  String playerStatus;
  String userimage;
  String balance;
  String winid;
  String userid;
   Playerframe({Key? key, required this.playerStatus,required this.userimage,required this.balance,required this.winid,required this.userid}) : super(key: key);

  @override
  State<Playerframe> createState() => _PlayerframeState();
}

class _PlayerframeState extends State<Playerframe> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(child: Container(
          height: MediaQuery.of(context).size.height*0.24,
          width:  MediaQuery.of(context).size.width*0.10,
          decoration: BoxDecoration(
            image:DecorationImage(
                colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),

                image: AssetImage("assets/images/PlayPerson1.png"),

                fit: BoxFit.fill)
          ),
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(right: MediaQuery.of(context).viewInsets.right + 2, top: MediaQuery.of(context).viewInsets.top + 25),
                child: Container(
                  height: MediaQuery.of(context).size.height*0.1,
                  width:  MediaQuery.of(context).size.width*0.06,
                  decoration:BoxDecoration(
                      image: DecorationImage(
                          image:NetworkImage(widget.userimage),
                          fit: BoxFit.fill)
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 3),
                child: Text(
                  widget.balance,
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 12* MediaQuery.textScaleFactorOf(context),
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        )),
        Positioned(
          top: MediaQuery.of(context).size.width*0.229,
          right: MediaQuery.of(context).size.width*0.330,
          child: Container(
            height: MediaQuery.of(context).size.height*0.0450,
            width:  MediaQuery.of(context).size.width*0.0250,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/roulette.png"),
                    fit: BoxFit.fill)),
          ),

        ),
        Positioned(
          child: widget.winid==widget.userid.toString()?
          Container(
              height: 90,
              width: 80,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/winner.gif',),

                      fit:BoxFit.fitHeight
                  )
              ),
              child:Center(child: Text('WINNER', style: TextStyle(color:Colors.yellow, fontWeight: FontWeight.w900,fontSize:15),))
          ):Container(),
        ),
      ],
    );
  }
}
