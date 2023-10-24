import 'package:flutter/material.dart';
class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/questable.png"),fit: BoxFit.fill)
            ),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.0950,
                  width: MediaQuery.of(context).size.width*0.18,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/abouttxt.png"),fit: BoxFit.fill)
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.10,),
            Container(
            height: MediaQuery.of(context).size.height*0.25,
            width: MediaQuery.of(context).size.width*0.28,
              decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          image: DecorationImage(image: AssetImage("assets/images/rlg.jpeg"),fit: BoxFit.fill)
      ),
            ),
                SizedBox(height: MediaQuery.of(context).size.height*0.0300,),
                Text("v39.0.5",style: TextStyle(color: Colors.white,fontSize:16*MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                Text("(C)2023 Play Games24x7 Pvt.Ltd.",style: TextStyle(color: Colors.white,fontSize:16*MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                SizedBox(height: MediaQuery.of(context).size.height*0.0500,),
                Text("Terms of Service | Privacy policy",style: TextStyle(color: Colors.white,decoration:TextDecoration.underline,fontSize:19*MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.width*0.37,
            left: MediaQuery.of(context).size.width*0.85,
            child: InkWell(onTap: (){Navigator.pop(context);},
              child: Container(
                height: MediaQuery.of(context).size.height*0.0950,
                width: MediaQuery.of(context).size.width*0.0600,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/cross.png"),fit: BoxFit.fill)
                ),
              ),
            ),
          ),
        ],

      ),

    );
  }
}
