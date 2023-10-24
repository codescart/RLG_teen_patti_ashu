import 'package:flutter/material.dart';
import 'package:ultimate_teen_patti/HomePage/freechips.dart';
import 'package:ultimate_teen_patti/HomePage/friends.dart';
import 'package:ultimate_teen_patti/updateprofiledetail.dart';
class Profile extends StatefulWidget {
  final String ?image;
  final String ?name;
  final int ?id;
   Profile({Key? key,  this.image,  this.name,  this.id}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        alignment: Alignment.topRight,
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: double.infinity,
              width: MediaQuery.of(context).size.width*0.34,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/persontable.png"),fit: BoxFit.fill)
              ),
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 50,bottom: MediaQuery.of(context).viewInsets.bottom + 12,),
                    child: Row(
                      children: [
                        Text("My Profile Details ",style: TextStyle(color: Colors.white,fontSize: 15*MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.w500),),
                        Padding(
                          padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom + 4,),
                          child: InkWell(
                            onTap: (){
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) => Update_profile());
                            },
                            // child: Icon(Icons.edit_rounded,color: Colors.white,size: 20,),
                            child: Image.asset("assets/images/editicon.png",color: Colors.white,
                              height: MediaQuery.of(context).size.height*0.0500,
                              width:  MediaQuery.of(context).size.width*0.0350,fit: BoxFit.fill,),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 0,left: MediaQuery.of(context).viewInsets.left + 7),
                          child: widget.image==null?
                          Image.asset("assets/images/person1.png",
                            height: MediaQuery.of(context).size.height*0.15,
                            width:  MediaQuery.of(context).size.width*0.11,fit: BoxFit.fill,)
                        :Image.network(widget.image.toString(),
                          height: MediaQuery.of(context).size.height*0.15,
                          width:  MediaQuery.of(context).size.width*0.11,
                          fit: BoxFit.fill,),
                      )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 0,left: MediaQuery.of(context).viewInsets.left + 25,),
                            child: Text(widget.name==null ?"Guest_63":widget.name.toString(),style: TextStyle(color: Colors.amber,fontSize: 16 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 62),
                            child: Text("Bronze Club",style: TextStyle(color: Colors.amberAccent,fontSize: 13 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                          ),
                          Row(
                            children: [
                              Container(
                                  height: MediaQuery.of(context).size.height*0.0850,
                                  width:  MediaQuery.of(context).size.width*0.15,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("assets/images/collect.png"),fit: BoxFit.fill)
                                  ),
                                  child: Row(
                                    children: [
                                      Center(child: Text("    Collecting",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 15 * MediaQuery.textScaleFactorOf(context)),)),
                                    ],
                                  )
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height*0.0700,
                                width:  MediaQuery.of(context).size.width*0.0350,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/images/blackace.png"),fit: BoxFit.fill)
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.0010),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(widget.id==null?"Player ID: RLG001":"Player ID: "+widget.id.toString(),style: TextStyle(color: Color(0xff8e6313),fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Container(height:MediaQuery.of(context).size.height*0.012,width:MediaQuery.of(context).size.width*0.34,child: Divider(color: Colors.white,thickness: 0.5,)),

                  Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 19),
                        child: Text("     0\nFriends ",style: TextStyle(color: Colors.amberAccent,fontSize: 16),),
                      ),
                      Container(height:MediaQuery.of(context).size.height*0.13,width:MediaQuery.of(context).size.width*0.013,child: VerticalDivider(color: Colors.white,thickness: 0.5,)),
                      SizedBox(width: MediaQuery.of(context).size.width*0.0450,),
                      InkWell(
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Friends()));},
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.11,
                          width:  MediaQuery.of(context).size.width*0.14,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/images/invitebutton.png"),fit: BoxFit.fill)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.person_add_alt_1,color: Colors.white,),
                              Text("Invite",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left:  MediaQuery.of(context).viewInsets.left + 75,bottom:  MediaQuery.of(context).viewInsets.bottom + 6),
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.0750,
                          width:  MediaQuery.of(context).size.width*0.0500,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/images/badge.png"),fit: BoxFit.fill)
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(bottom:  MediaQuery.of(context).viewInsets.bottom + 15),
                        child: Text("Game Stats",style: TextStyle(color: Colors.white,fontSize: 15 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.w500),),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Games Won",style: TextStyle(color: Colors.white,fontSize: 16 * MediaQuery.textScaleFactorOf(context)),),
                      Text("      0",style: TextStyle(color: Colors.amber,fontSize: 16 * MediaQuery.textScaleFactorOf(context)),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("NL Games Won",style: TextStyle(color: Colors.white,fontSize: 16 * MediaQuery.textScaleFactorOf(context)),),
                      Text("0",style: TextStyle(color: Colors.amber,fontSize: 16*MediaQuery.textScaleFactorOf(context)),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Variation Won",style: TextStyle(color: Colors.white,fontSize: 16 * MediaQuery.textScaleFactorOf(context)),),
                      Text("   0",style: TextStyle(color: Colors.amber,fontSize: 16 * MediaQuery.textScaleFactorOf(context)),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Nl Battle Won",style: TextStyle(color: Colors.white,fontSize: 16 * MediaQuery.textScaleFactorOf(context)),),
                      Text("   0",style: TextStyle(color: Colors.amber,fontSize: 16 * MediaQuery.textScaleFactorOf(context)),),
                    ],
                  ),

                ],
              ),

            ),
            Positioned(
              bottom: MediaQuery.of(context).size.width*0.37,
              right: MediaQuery.of(context).size.width*0.36,
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
