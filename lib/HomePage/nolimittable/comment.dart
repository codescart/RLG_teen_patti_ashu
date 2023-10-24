import 'package:flutter/material.dart';
class Comment extends StatefulWidget {
  const Comment({Key? key}) : super(key: key);

  @override
  State<Comment> createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        alignment: Alignment.topLeft,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: double.infinity,
              width:  MediaQuery.of(context).size.width*0.35,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/backtable.png"),
                      fit: BoxFit.fill)),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height*0.12,
                        width:  MediaQuery.of(context).size.width*0.13,
                        child: Image.asset("assets/images/chattxt.png",fit: BoxFit.fill,)),
                    SizedBox(height: MediaQuery.of(context).size.height*0.0150,),
                    Container(
                      height: MediaQuery.of(context).size.height*0.17,
                      width:  MediaQuery.of(context).size.width*0.40,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/browntxtfield.png"),
                              fit: BoxFit.fill)),
                      child: Center(
                        child: Container(
                          width:  MediaQuery.of(context).size.width*0.30,

                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "     Type here",
                                hintStyle: TextStyle(color:Colors.grey,fontSize: 16 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),
                                focusColor: Colors.black,
                              suffixIcon: Container(
                                height: MediaQuery.of(context).size.height*0.13,
                                width:  MediaQuery.of(context).size.width*0.0700,
                                  child: Image.asset("assets/images/Farrow.png",fit: BoxFit.fill,)
                              )
                            ),
                          ),
                        ),
                      )
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.0200),
                    Container(
                      height: MediaQuery.of(context).size.height*0.40,
                      width:  MediaQuery.of(context).size.width*0.40,
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*0.11,
                            width:  MediaQuery.of(context).size.width*0.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/greenbutton.png"),
                                    fit: BoxFit.fill)),
                            child: Center(child: Text("Please play blind",style: TextStyle(color:Colors.white,fontSize: 15* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height*0.0200),
                          Container(
                            height: MediaQuery.of(context).size.height*0.11,
                            width:  MediaQuery.of(context).size.width*0.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/greenbutton.png"),
                                    fit: BoxFit.fill)),
                            child: Center(child: Text("Please play fast",style: TextStyle(color:Colors.white,fontSize: 15* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height*0.0200),
                          Container(
                            height: MediaQuery.of(context).size.height*0.11,
                            width:  MediaQuery.of(context).size.width*0.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/greenbutton.png"),
                                    fit: BoxFit.fill)),
                            child: Center(child: Text("That's how to win it",style: TextStyle(color:Colors.white,fontSize: 15* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height*0.0200),
                          Container(
                            height: MediaQuery.of(context).size.height*0.11,
                            width:  MediaQuery.of(context).size.width*0.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/greenbutton.png"),
                                    fit: BoxFit.fill)),
                            child: Center(child: Text("I love Ultimate Teenpatti",style: TextStyle(color:Colors.white,fontSize: 15* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height*0.0200),
                          Container(
                            height: MediaQuery.of(context).size.height*0.11,
                            width:  MediaQuery.of(context).size.width*0.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/greenbutton.png"),
                                    fit: BoxFit.fill)),
                            child: Center(child: Text("That's a big pot!",style: TextStyle(color:Colors.white,fontSize: 15* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height*0.0200),
                          Container(
                            height: MediaQuery.of(context).size.height*0.11,
                            width:  MediaQuery.of(context).size.width*0.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/greenbutton.png"),
                                    fit: BoxFit.fill)),
                            child: Center(child: Text("I am unlucky!",style: TextStyle(color:Colors.white,fontSize: 15* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height*0.0200),
                          Container(
                            height: MediaQuery.of(context).size.height*0.11,
                            width:  MediaQuery.of(context).size.width*0.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/greenbutton.png"),
                                    fit: BoxFit.fill)),
                            child: Center(child: Text("Well Played!",style: TextStyle(color:Colors.white,fontSize: 15* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height*0.0200),
                          Container(
                            height: MediaQuery.of(context).size.height*0.11,
                            width:  MediaQuery.of(context).size.width*0.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/greenbutton.png"),
                                    fit: BoxFit.fill)),
                            child: Center(child: Text("Better luck next time!",style: TextStyle(color:Colors.white,fontSize: 15* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height*0.0200),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.width*0.37,
              left: MediaQuery.of(context).size.width*0.31,
              child: InkWell(onTap: (){Navigator.pop(context);},
                child: Container(
                  height: MediaQuery.of(context).size.height*0.0950,
                  width:  MediaQuery.of(context).size.width*0.0600,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/cross.png"),fit: BoxFit.fill)
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}
