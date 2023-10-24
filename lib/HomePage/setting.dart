import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ultimate_teen_patti/HomePage/about.dart';
import 'package:ultimate_teen_patti/HomePage/homePage.dart';
import 'package:ultimate_teen_patti/HomePage/profile.dart';
import 'package:ultimate_teen_patti/HomePage/starrating.dart';
import 'package:ultimate_teen_patti/const.dart';

import 'package:ultimate_teen_patti/registrationscreen.dart';
class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool isSwitched = false;
  bool isSwitch = false;
  bool status = false;
  bool isSwitchOn = true;

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
              height:  double.infinity,
              width:  MediaQuery.of(context).size.width*0.29,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/backtable.png"),
                      fit: BoxFit.fill)),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width*0.0700,),
                      Container(
                          height:  MediaQuery.of(context).size.height*0.0900,
                          width:  MediaQuery.of(context).size.width*0.15,
                          child: Image.asset("assets/images/settingtxt.png",fit: BoxFit.fill,))
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.0500,),
                  Container(
                    height:  MediaQuery.of(context).size.height*0.14,
                    width:  MediaQuery.of(context).size.width*0.24,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/settbutton.png"),
                            fit: BoxFit.fill)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: MediaQuery.of(context).size.width*0.0100),
                        InkWell(
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));              },
                          child: Container(
                              height:  MediaQuery.of(context).size.height*0.11,
                              width:  MediaQuery.of(context).size.width*0.0800,
                              child:
                              pro==null?
                              Image.asset(
                                "assets/images/person1.png",
                                height: MediaQuery.of(context).size.height * 0.12,
                                width: MediaQuery.of(context).size.width * 0.0800,
                                fit: BoxFit.fill,
                              ):
                              pro['photo']== null?

                              Image.asset(
                                "assets/images/person1.png",
                                height: MediaQuery.of(context).size.height * 0.12,
                                width: MediaQuery.of(context).size.width * 0.0800,
                                fit: BoxFit.fill,
                              ):
                              Image.network(
                                pro['photo'],
                                height: MediaQuery.of(context).size.height * 0.12,
                                width: MediaQuery.of(context).size.width * 0.0800,
                                fit: BoxFit.fill,
                              )
                          ),
                        ),
                        Text(pro==null?'your name':pro['name'],style: TextStyle(color: Colors.white,fontSize: 16* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.0200,),
                  Container(
                    height:  MediaQuery.of(context).size.height*0.19,
                    width:  MediaQuery.of(context).size.width*0.24,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/settbutton.png"),
                            fit: BoxFit.fill)
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // FlutterSwitch(
                            //   activeColor: Colors.green,
                            //   width: 100.0,
                            //   height: 30.0,
                            //   valueFontSize: 25.0,
                            //   toggleSize: 45.0,
                            //   value: status,
                            //   borderRadius: 30.0,
                            //   padding: 8.0,
                            //   showOnOff: true,
                            //   onToggle: (val) {
                            //     setState(() {
                            //       status = val;
                            //     });
                            //   },
                            // ),
                            Switch(
                                value: isSwitched,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched = value;
                                  });
                                }),
                            Switch(
                                value: isSwitch,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitch = value;
                                  });
                                }),

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("  Sound",style: TextStyle(color: Colors.white,fontSize: 14* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                            SizedBox(width: MediaQuery.of(context).size.width*0.0200),
                            Text("Vibration",style: TextStyle(color: Colors.white,fontSize: 14* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.0100,),
                  InkWell(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Star()));},
                    child: Container(
                      height:  MediaQuery.of(context).size.height*0.0850,
                      width:  MediaQuery.of(context).size.width*0.15,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/starbutton.png"),
                              fit: BoxFit.fill)),
                      child: Padding(
                        padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 7,left:  MediaQuery.of(context).viewInsets.left + 32),
                        child: Text("Rate Us",style: TextStyle(color: Color(0xff49160e),fontSize: 15* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height:  MediaQuery.of(context).size.height*0.0880,
                            width:  MediaQuery.of(context).size.width*0.12,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/fbbutton.png"),
                                    fit: BoxFit.fill)),
                            child: Padding(
                              padding:  EdgeInsets.only(left:  MediaQuery.of(context).viewInsets.left + 33,top:  MediaQuery.of(context).viewInsets.top + 9),
                              child: Text("SIGN IN",style: TextStyle(color: Colors.white,fontSize: 12* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                            ),
                          ),
                          Container(
                            height:  MediaQuery.of(context).size.height*0.0880,
                            width:  MediaQuery.of(context).size.width*0.12,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/button.png"),
                                    fit: BoxFit.fill)),
                            child: Padding(
                              padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 18,top:  MediaQuery.of(context).viewInsets.top + 8),
                              child: Text("Support",style: TextStyle(color: Color(0xff470004),fontSize: 13* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height*0.0200,),
                      InkWell(
                        onTap: (){
                          showDialog(
                              context: context,
                              builder: (BuildContext context)=>About());
                        },
                        child: Container(
                          height:  MediaQuery.of(context).size.height*0.0800,
                          width:  MediaQuery.of(context).size.width*0.12,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/about.png"),
                                  fit: BoxFit.fill)),

                        ),
                      ),

                      SizedBox(height: MediaQuery.of(context).size.height*0.0200,),
                      InkWell(
                        onTap: (){
                          logoutapi();
                        },
                        child: Container(
                          height:  MediaQuery.of(context).size.height*0.0880,
                          width:  MediaQuery.of(context).size.width*0.12,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/button.png"),
                                  fit: BoxFit.fill)),
                          child: Padding(
                            padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 18,top:  MediaQuery.of(context).viewInsets.top + 8),
                            child: Text("Logout",style: TextStyle(color: Color(0xff470004),fontSize: 13* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                          ),
                        )
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              bottom:  MediaQuery.of(context).size.width*0.37,
              left:  MediaQuery.of(context).size.width*0.26,
              child: InkWell(onTap: (){Navigator.pop(context);},
                child: Container(
                  height:  MediaQuery.of(context).size.height*0.0950,
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
  @override
  void initState() {
    profile();
    // TODO: implement initState
    super.initState();
  }
  var pro;
  profile()async{
    final prefs1 = await SharedPreferences.getInstance();
    final useid=prefs1.getInt('user_id') ?? 0;

    final response = await http.get(
        Uri.parse(
            ApiConst.baseurl+"view/$useid"));
    final data= jsonDecode(response.body);
    print(data);
    setState(() {
      pro=data['data'];
    });
    print('laaaaaaa');
    print(pro);
  }
  logoutapi() async{
    final prefs1 = await SharedPreferences.getInstance();
    final useid=prefs1.getInt('user_id') ?? 0;
    final resp= await http.get(Uri.parse('https://apponrent.co.in/rlg/api/logout.php?userid=$useid'));
    final data=jsonDecode(resp.body);
    print('anirudh');
if(data['error']=='200'){
  Navigator.push(context, MaterialPageRoute(builder: (context)=>registration()));
}
    print(data);
  }

}
