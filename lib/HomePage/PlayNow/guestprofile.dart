import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ultimate_teen_patti/HomePage/friends.dart';
import 'package:ultimate_teen_patti/const.dart';
class Guest_Profile extends StatefulWidget {
final id;
final img;
final name;
final win;
final String tableno;
Guest_Profile({required this.id, required this.img, required this.name, required this.win,required this.tableno});
  @override
  State<Guest_Profile> createState() => _Guest_ProfileState();
}

class _Guest_ProfileState extends State<Guest_Profile> {
  TextEditingController _message = TextEditingController();
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
              height: MediaQuery.of(context).size.height*1.0,
              width: MediaQuery.of(context).size.width*0.40,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/persontable.png"),fit: BoxFit.fill)
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 25,left: MediaQuery.of(context).viewInsets.left + 7),
                          child: Image.network(widget.img,
                            height: MediaQuery.of(context).size.height*0.17,
                            width:  MediaQuery.of(context).size.width*0.12,fit: BoxFit.fill,),
                        ),

                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: 43,top: MediaQuery.of(context).viewInsets.top + 18),
                            child: Text(widget.name,style: TextStyle(color: Colors.amber,fontSize: 17 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height*0.0100,),
                          Text("                 Bronze Club",style: TextStyle(color: Colors.amberAccent,fontSize: 13 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                          Row(
                            children: [
                              Container(
                                  height: MediaQuery.of(context).size.height*0.11,
                                  width:  MediaQuery.of(context).size.width*0.15,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("assets/images/collect.png"),fit: BoxFit.fill)
                                  ),
                                  child: Row(
                                    children: [
                                      Center(child: Text("   Collecting",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 15 * MediaQuery.textScaleFactorOf(context)),)),
                                    ],
                                  )
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height*0.0750,
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
                  SizedBox(height: MediaQuery.of(context).size.height*0.0100),
                   Container(height:MediaQuery.of(context).size.height*0.011,width:MediaQuery.of(context).size.width*0.40,child: Divider(color: Colors.white,thickness: 0.5,)),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 65.0),
                        child: Text("Player ID: utp_6wqdg",style: TextStyle(color: Color(0xff8e6313),fontWeight: FontWeight.bold,fontSize: 16),),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.0300,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Balance : ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                      Text(" 50000",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),)
                    ],
                  ),

                  // SizedBox(height: MediaQuery.of(context).size.height*0.010),
                  // Row(
                  //   children: [
                  //     Text("            0\n      Friends ",style: TextStyle(color: Colors.amberAccent,fontSize: 16),),
                  //     Container(height:MediaQuery.of(context).size.height*0.13,width:MediaQuery.of(context).size.width*0.012,child: VerticalDivider(color: Colors.white,thickness: 0.5,)),
                  //     SizedBox(width: MediaQuery.of(context).size.width*0.0500,),
                  //     InkWell(
                  //       onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Friends()));},
                  //       child: Container(
                  //         height: MediaQuery.of(context).size.height*0.11,
                  //         width:  MediaQuery.of(context).size.width*0.15,
                  //         decoration: BoxDecoration(
                  //             image: DecorationImage(image: AssetImage("assets/images/invitebutton.png"),fit: BoxFit.fill)
                  //         ),
                  //         child: Row(
                  //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //           children: [
                  //             Icon(Icons.person_add_alt_1,color: Colors.white,),
                  //             Text("Invite",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                  //           ],
                  //         ),
                  //       ),
                  //     )
                  //   ],
                  // ),
                  Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(top: 15,left:  MediaQuery.of(context).viewInsets.left + 92,),
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.0750,
                          width:  MediaQuery.of(context).size.width*0.0500,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/images/badge.png"),fit: BoxFit.fill)
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top:14,),
                        child: Text("Game Stats",style: TextStyle(color: Colors.white,fontSize: 15 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.w500),),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Games Won",style: TextStyle(color: Colors.white,fontSize: 16 * MediaQuery.textScaleFactorOf(context)),),
                        Text('35',

                          //widget.win,

                          style: TextStyle(color: Colors.amber,fontSize: 16 * MediaQuery.textScaleFactorOf(context)),),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 2.0),
                      child: Container(
                          height: MediaQuery.of(context).size.height*0.15,
                          width:  MediaQuery.of(context).size.width*0.35,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/browntxtfield.png"),
                                  fit: BoxFit.fill)),
                          child: Center(
                            child: Container(
                              width:  MediaQuery.of(context).size.width*0.30,
                              child: TextFormField(
                                style: TextStyle(color: Colors.white),
                                controller: _message,
                                cursorColor: Colors.white,

                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "  Type here",

                                    hintStyle: TextStyle(color:Colors.grey,fontSize: 16 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),
                                    focusColor: Colors.black,
                                    suffixIcon: InkWell(
                                      onTap: (){
                                        messagesend(message:_message.text,id: widget.id,);

                                      },
                                      child: Container(
                                          height: MediaQuery.of(context).size.height*0.12,
                                          width:  MediaQuery.of(context).size.width*0.0700,
                                          child: Image.asset("assets/images/Farrow.png",fit: BoxFit.fill,)
                                      ),
                                    )
                                ),
                              ),
                            ),
                          )
                      ),
                      // child: Container(
                      //   height: MediaQuery.of(context).size.height*0.11,
                      //   width:  MediaQuery.of(context).size.width*0.15,
                      //   decoration: BoxDecoration(
                      //       image: DecorationImage(image: AssetImage("assets/images/invitebutton.png"),fit: BoxFit.fill)
                      //   ),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //     children: [
                      //       Icon(Icons.message,color: Colors.white,),
                      //       Text("Message",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                      //     ],
                      //   ),
                      // ),
                    ),
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: [
                  //     Text("NL Games Won",style: TextStyle(color: Colors.white,fontSize: 16 * MediaQuery.textScaleFactorOf(context)),),
                  //     Text("0",style: TextStyle(color: Colors.amber,fontSize: 16),),
                  //   ],
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: [
                  //     Text("Variation Won",style: TextStyle(color: Colors.white,fontSize: 16 * MediaQuery.textScaleFactorOf(context)),),
                  //     Text("   0",style: TextStyle(color: Colors.amber,fontSize: 16 * MediaQuery.textScaleFactorOf(context)),),
                  //   ],
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: [
                  //     Text("Nl Battle Won",style: TextStyle(color: Colors.white,fontSize: 16 * MediaQuery.textScaleFactorOf(context)),),
                  //     Text("   0",style: TextStyle(color: Colors.amber,fontSize: 16 * MediaQuery.textScaleFactorOf(context)),),
                  //   ],
                  // ),

                ],
              ),

            ),
            Positioned(
              bottom: MediaQuery.of(context).size.width*0.37,
              left: MediaQuery.of(context).size.width*0.36,
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
  messagesend ({required String message, required String id}) async{
    print(message);
print(id);
    final prefs1 = await SharedPreferences.getInstance();
    final useid=prefs1.getInt('user_id') ?? 0;

    final res=await http.post(Uri.parse(ApiConst.baseurl+'message/store'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "send_id":"$useid",
        "recived_id":id,
        "table_id":widget.tableno,
        "message":message

      }),
    );
    final data=jsonDecode(res.body);
    print("ggggggg");
    print(data);
    if(data['success']=='200'){
      Fluttertoast.showToast(
          msg: message,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0);
    }

  }

}
