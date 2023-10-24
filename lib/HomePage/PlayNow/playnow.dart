import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ultimate_teen_patti/HomePage/PlayNow/backbutton.dart';
import 'package:ultimate_teen_patti/HomePage/PlayNow/comment.dart';
import 'package:ultimate_teen_patti/HomePage/PlayNow/guestprofile.dart';
import 'package:ultimate_teen_patti/HomePage/PlayNow/i2.dart';
import 'package:ultimate_teen_patti/HomePage/PlayNow/playercard.dart';
import 'package:ultimate_teen_patti/HomePage/PlayNow/playerframe.dart';
import 'package:ultimate_teen_patti/HomePage/PlayNow/store.dart';
import 'package:ultimate_teen_patti/HomePage/homePage.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:ultimate_teen_patti/HomePage/setting.dart';
import 'package:http/http.dart' as http;
import 'package:ultimate_teen_patti/Slidetransdep/add_to_cart_animation.dart';
import 'package:ultimate_teen_patti/UserPlayTransition.dart';
import 'package:ultimate_teen_patti/card.dart';
import 'package:ultimate_teen_patti/transation/liquid/src/liquid_linear_progress_indicator.dart';
import 'package:ultimate_teen_patti/transation/user_animation.dart';
import 'package:ultimate_teen_patti/transation/userborer.dart';



class ClockModel {

  late int hour;
  late int minute;
  late int second;
  late bool is24HourFormat;

  get is24HourTimeFormat => this.is24HourFormat;
}


class Play_Now extends StatefulWidget {
  const Play_Now({Key? key}) : super(key: key);

  @override
  State<Play_Now> createState() => _Play_NowState();
}

class _Play_NowState extends State<Play_Now> {
  bool isSwitched = false;
  Color _textColor = Colors.green;
  Color _appBarColor = Colors.green;
  bool status = false;
  bool isSwitchOn = false;
double chalpercent=0.0;
bool chalani=false;
int sseond=0;
  @override
  void initState() {
    tablecreate();
    _dateTime = DateTime.now().toUtc();
    _clockModel = ClockModel();
    _clockModel.is24HourFormat =  true;
    _dateTime = DateTime.now().toUtc();
    _clockModel.hour = _dateTime.hour;
    _clockModel.minute = _dateTime.minute;
    _clockModel.second = _dateTime.second;

    print('ttttttttttttttttttttttt');
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
     final sond=sseond++;
      _dateTime = DateTime.now().toUtc();
      _clockModel.hour = _dateTime.hour;
      _clockModel.minute = _dateTime.minute;
      _clockModel.second = _dateTime.second;

      final ond=_clockModel.second;
      double a = sond/12;
      double b = double.parse(a.toStringAsFixed(1));
setState(() {
  sseond++;

  chalpercent=b;
  });
});
continueapihit();
    super.initState();

  }

 ///variables

  late DateTime _dateTime;
  late ClockModel _clockModel;
  late Timer _timer;


  var pos;
  var players;
  var player1;
  var postion=0;
  var player2;
  var player3;
  var player4;
  var player5;
  var table='1';
  int useid=25;
  int gid=2;
  var carddata;
  var refdata;
String lastindex='';
String nextposition='';
  String lastposition='';
String nextindex='';
  String currentplay='';
var keyl;
  GlobalKey<CartIconKey> cartKey1 = GlobalKey<CartIconKey>();
  GlobalKey<CartIconKey> cartKey2 = GlobalKey<CartIconKey>();
  GlobalKey<CartIconKey> cartKey3= GlobalKey<CartIconKey>();
  GlobalKey<CartIconKey> cartKey4 = GlobalKey<CartIconKey>();
  GlobalKey<CartIconKey> cartKey5 = GlobalKey<CartIconKey>();
  GlobalKey<CartIconKey> coinanimation = GlobalKey<CartIconKey>();

  late Function(GlobalKey) runAddToCartAnimation;
  var _cartQuantityItems = 0;
  String winid='';
  String next='0';
  bool gamestart=true;
  bool show=false;
  int chaal=2;
  bool inc=false;
  bool pack=false;
  bool sideshow=false;
  bool sideshownext=true;
  bool ham=false;
  String turn='';
  bool slidereq=false;

//apis
  tablecreate() async{
    keyl=cartKey5;
    final prefs1 = await SharedPreferences.getInstance();
    setState(() {
      useid=prefs1.getInt('user_id') ?? 0;
    });
    print("https://apponrent.co.in/rlg/api/game3.php?game_id=$gid&user_id=$useid");
    final response = await http.get(
        Uri.parse(
            "https://apponrent.co.in/rlg/api/game3.php?game_id=$gid&user_id=$useid"));
    setState(() {
      pos= jsonDecode(response.body);
      players= pos['data'];
      postion=pos['position'];
      table=pos['Tableno'];
      if(postion.toString()=='1'){
        player1=0;player2=1;player3=2;player4=3;player5=4;
      }else if(postion.toString() == '2'){
        player1=1;player2=2;player3=3;player4=4;player5=0;
      }else if(postion.toString() =='3'){
        player1=2;player2=3;player3=4;player4=0;player5=1;
      }else if(postion.toString()=='4'){
        player1=3;player2=4;player3=0;player4=1;player5=2;
      }else{
        player1=4;player2=0;player3=1;player4=2;player5=3;
      }


    });
    cardcreate();
  }
  continueapihit() {
    curplay();
    refreshcreate();
  }

  refreshcreate() async{
    lastpos();
    print('https://apponrent.co.in/rlg/api/tabledata.php?tableno=$table&gameid=$gid&user_id=$useid');
    final response = await http.get(
        Uri.parse(
            "https://apponrent.co.in/rlg/api/tabledata.php?tableno=$table&gameid=$gid&user_id=$useid"));
    setState(() {
      pos= jsonDecode(response.body);
      players= pos['data'];
      postion=pos['position'];
      print('hai radhe shyam');

      table=pos['Tableno'];
      print(table);
      if(postion.toString()=='1'){
        print('radhe radhe');
        player1=0;player2=1;player3=2;player4=3;player5=4;
      }else if(postion.toString() == '2'){
        print('radhe radhe');
        player1=1;player2=2;player3=3;player4=4;player5=0;
      }else if(postion.toString() =='3'){
        print('radhe radhe');
        player1=2;player2=3;player3=4;player4=0;player5=1;
      }else if(postion.toString()=='4'){
        print('radhe radhe');
        player1=3;player2=4;player3=0;player4=1;player5=2;
      }else{
        print('radhe radhe');
        player1=4;player2=0;player3=1;player4=2;player5=3;
      }


    });
    print('data');
    print(refdata);
  }
  cardcreate() async{
    final response = await http.get(
        Uri.parse(
            "https://apponrent.co.in/rlg/api/cardrandom.php?tableno=$table&gameid=$gid"));
    final dta=jsonDecode(response.body);
    setState(() {
      carddata= dta['data'];
    });
  }
  curplay()async{
    print('https://apponrent.co.in/rlg/api/currentplay.php?user_id=$useid&tableno=$table&gameid=$gid');
    final resp= await http.get(Uri.parse('https://apponrent.co.in/rlg/api/currentplay.php?user_id=$useid&tableno=$table&gameid=$gid'));
    final data=jsonDecode(resp.body);
    setState(() {
      currentplay=data['userid'];
      turn=data['position'];
    });
  }
  nextturn()async{
    print('https://rlg.apponrent.co.in/api/nextturn.php?userid=$nextposition&tableno=$table&gameid=$gid');
    final resp= await http.get(Uri.parse('https://apponrent.co.in/rlg/api/currentplay.php?user_id=$useid&tableno=$table&gameid=$gid'));
    final data=jsonDecode(resp.body);
    setState(() {
      currentplay=data['userid'];
      turn=data['position'];
    });
  }
  mysliedeshow()async{
    final resp= await http.get(Uri.parse('https://apponrent.co.in/rlg/api/slideshowreq_myuserid_view.php?myuserid=$useid&tableno=$table&gid=$gid'));
    final data=jsonDecode(resp.body);
    if(data['error']=='200'){
      if(next!=data[0]['id']) {
        if (data[0]['status'] == '0') {
          setState(() {
            sideshownext = false;
            slidereq = true;
            // next=data[0]['id'];
          });
        } else if (data[0]['status'] == '1') {
          setState(() {
            sideshownext = true;
            slidereq = false;
            next = data[0]['id'];
          });
        }
      }
      else{
        setState(() {
          sideshownext = false;
          slidereq = false;
          // next=data[0]['id'];
        });
      }
    }else{

    }

  }
  opposliedeshow()async{

    final resp= await http.get(Uri.parse('https://apponrent.co.in/rlg/api/slideshowreq_oppuserid_view.php?oppuserid=$nextposition&tableno=$table&gid=$gid'));
    final data=jsonDecode(resp.body);
    if(data['error']=='200'){
      if(next==data[0]['id']) {
        if (data[0]['status'] == '1') {
          setState(() {
            sideshow = true;
            next = data[0]['id'];
          });
        }
      }
      else{
        setState(() {
          sideshow = false;
        });
      }
    }else{

    }

  }
  hammerdebit()async{
    await http.get(Uri.parse('https://apponrent.co.in/rlg/api/slideshowreq_update.php?myuserid=$nextposition&oppuserid=$useid&gid=$gid&tableno=$table&status=2'));
    nextturn();
  }
  transitionadd(int ?type)async{
    if(type==1){
      await http.post(Uri.parse('https://apponrent.co.in/rlg/api/slideshowreq_add.php?myuserid=$useid&oppuserid=$lastposition&gid=$gid&tableno=$table'));
      setState(() {
        sseond=0;
      });
      nextturn();

    }else if(type == 2){
      hammerdebit();
      nextturn();
      setState(() {
        sseond=0;
      });
    }else{
      setState(() {
        sseond=0;
      });
      nextturn();
      chaalblind();
    }
    final url=type!=3?
    "https://rlg.apponrent.co.in/api/inserttransition.php?trans1=$useid&trans2=$lastposition&type=$type&gid=$gid&tableno=$table"
        :"https://rlg.apponrent.co.in/api/inserttransition.php?trans1=$useid&trans2=0&type=$type&gid=$gid&tableno=$table";
    print(url);
    final resp= await http.get(Uri.parse(url));
  }
  chaalblind()async{

    final resp= await http.get(Uri.parse('https://apponrent.co.in/rlg/api/chal.php?user_id=$useid&amount=$chaal&tableno=$table&gameid=$gid'));
    final data=jsonDecode(resp.body);
    nextturn();
  }
  packapi() async{
    setState(() {
      pack=true;
    });
    final resp= await http.get(Uri.parse('https://apponrent.co.in/rlg/api/pack.php?user_id=$useid&tableno=$table&&gameid=$gid'));
    final data=jsonDecode(resp.body);
    nextturn();
  }
  showapi()async{
    print('https://apponrent.co.in/rlg/api/show_api.php?user_id=$useid&tableno=$table&gameid=$gid');
    final resp= await http.get(Uri.parse('https://apponrent.co.in/rlg/api/show_api.php?user_id=$useid&tableno=$table&gameid=$gid'));
    final data=jsonDecode(resp.body);
    print('showcard');
    print(data);
    setState(() {

      // chaal= data['chal_amount'].toInt();
    });

  }
  chaalamount()async{
    print('https://apponrent.co.in/rlg/api/chal_amount.php?user_id=$useid&tableno=$table&gameid=$gid');
    final resp= await http.get(Uri.parse('https://apponrent.co.in/rlg/api/chal_amount.php?user_id=$useid&tableno=$table&gameid=$gid'));
    final data=jsonDecode(resp.body);

    setState(() {
      chaal= int.parse(data['chal_amount'].toString());
    });
  }
  nextpos()async{

    print('https://apponrent.co.in/rlg/api/next_position.php?user_id=$useid&tableno=$table&gameid=$gid');
    final resp= await http.get(Uri.parse('https://apponrent.co.in/rlg/api/next_position.php?user_id=$useid&tableno=$table&gameid=$gid'));
    final data=jsonDecode(resp.body);
    setState(() {
      nextposition= data['nextposition'];
      nextindex=data['inde'];
      if(sideshownext==true){

        keyl=nextindex=='5'?cartKey5:nextindex=='2'?cartKey2:nextindex=='3'?cartKey3:nextindex=='4'?cartKey4:cartKey1;

        winnig(nextposition);
      }

    });

  }
  lastpos()async{
    print('https://apponrent.co.in/rlg/api/position.php?user_id=$useid&tableno=$table&gameid=$gid');
    final resp= await http.get(Uri.parse('https://apponrent.co.in/rlg/api/position.php?user_id=$useid&tableno=$table&gameid=$gid'));
    final data=jsonDecode(resp.body);
    setState(() {
      lastposition= data['lastposition'];
      lastindex=data['inde'];
      if(sideshow==true){
        keyl=lastindex=='5'?cartKey5:lastindex=='2'?cartKey2:lastindex=='3'?cartKey3:lastindex=='4'?cartKey4:cartKey1;
        winnig(lastposition);
      }
    });
  }
  winnig(String nextposition)async{
    final resp= await http.get(Uri.parse('https://rlg.apponrent.co.in/api/nitish.php?tableno=$table&myuser=$useid&oppuser=$nextposition'));
    final data=jsonDecode(resp.body);
    final winnerid=data['winner'];
    final winnertype=data['type'];
    final looserid=data['looser'];

  }

  @override
  Widget build(BuildContext context) {
    return AddToCartAnimations(
      // To send the library the location of the Cart icon
      cartKey: chalani==false?keyl:coinanimation,
      height: 30,
      width: 30,
      opacity: 0.85,
      dragAnimation: const DragToCartAnimationOptions(
        rotation: true,
      ),
      jumpAnimation: const JumpAnimationOptions(),
      createAddToCartAnimation: (runAddToCartAnimation) {
        // You can run the animation by addToCartAnimationMethod, just pass trough the the global key of  the image as parameter
        // You can run the animation by adahdToCartAnimationMethod, just pass trough the the global key of  the image as parameter
        this.runAddToCartAnimation = runAddToCartAnimation;
      },
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/playnowtable.png"), fit: BoxFit.fill),
          ),
          child: Stack(
            children: [

              //top work
              Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context)=>Back(useid: useid, table: table, gid: gid,)
                          );
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.10,
                          width: MediaQuery.of(context).size.width*0.0850,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/back.png",),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder:
                                  (BuildContext context )=>i2()
                          );
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.13,
                          width: MediaQuery.of(context).size.width*0.0760,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/i2.png"),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                      SizedBox(
                        width:  MediaQuery.of(context).size.width*0.59,
                      ),
                      InkWell(
                        onTap: () {
                          showDialog(
                            barrierDismissible: false,
                              context: context,
                              builder:
                                  (BuildContext context )=>Store()
                          );

                        },
                        child: Container(
                          height:  MediaQuery.of(context).size.height*0.18,
                          width:  MediaQuery.of(context).size.width*0.13,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                  AssetImage("assets/images/bottom1.png"),fit: BoxFit.cover)),
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left +14, bottom: MediaQuery.of(context).viewInsets.bottom +4),
                                child: Container(
                                  height:  MediaQuery.of(context).size.height*0.0600,
                                  width:  MediaQuery.of(context).size.width*0.0450,
                                  child: Image.asset(
                                    "assets/images/roulette.png",fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Text(" BUY", style: TextStyle(color: Colors.amber,fontSize: 15* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder:
                                  (BuildContext context )=>Setting()
                          );
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.0960,
                          width: MediaQuery.of(context).size.width*0.0600,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/setting.png"),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              //user work

              players==null?Container():player1==null?Container(): players[player1]['username']==null?Container():
              Positioned(
                bottom: MediaQuery.of(context).size.width*0.045,
                right: MediaQuery.of(context).size.width*0.40,
                child: Row(
                  children: [

                    Stack(
                      // clipBehavior:Clip.none,
                      children: [
                        turn=='1'? BreathingGlowingButton(
                            height: MediaQuery.of(context).size.height*0.20,
                            width:  MediaQuery.of(context).size.width*0.10,
                            onTap: (){},
                            buttonBackgroundColor: Colors.transparent,
                            glowColor: Colors.yellow,
                            child:Container(
                              height: MediaQuery.of(context).size.height*0.20,
                              width:  MediaQuery.of(context).size.width*0.10,
                            )):Container(),
                        InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder:
                                    (BuildContext context ) =>Guest_Profile(id: players[player1]['rusers_id'],
                                  img: players[player1]['userimage'],
                                  name: players[player1]['username'],
                                  win: players[player1]['Totalwin'], tableno: table,
                                )
                            );
                          },
                          child: keyl==cartKey1?AddToCartIcon(
                            key: keyl,
                            child: Playerframe(
                              userid: players[player1]['rusers_id'].toString(),
                              playerStatus: players[player1]['stutus'].toString(),
                              userimage: players[player1]['userimage'].toString(),
                              balance:  players[player1]['balance'].toString(),
                              winid: winid,
                            )):Playerframe(
                            userid: players[player1]['rusers_id'].toString(),
                            playerStatus: players[player1]['stutus'].toString(),
                            userimage: players[player1]['userimage'].toString(),
                            balance:  players[player1]['balance'].toString(),
                            winid: winid,
                          ),
                        ),
                        currentplay!=players[player1]['rusers_id'].toString()?Container():

                        Positioned(
                            top:MediaQuery.of(context).size.height*0.030,
                            left:-MediaQuery.of(context).size.width*0.01 ,
                            child: turn=='1'? _AnimatedLiquidLinearProgressIndicator():Container()
                        ),

                      ],
                    ),
                    PlayerCard(
                      card1:carddata[player1]['cardimage1']==null?'0': carddata[player1]['cardimage1'].toString(),
                      card2: carddata[player1]['cardimage2']==null?'0': carddata[player1]['cardimage2'].toString(),
                      card3: carddata[player1]['cardimage3']==null?'0': carddata[player1]['cardimage3'].toString(),
                      status: carddata[player1]['status'].toString(),
                      showstatus: carddata[player1]['show_status']==null?'0':carddata[player1]['show_status'].toString(),
                      pack: '0',
                      SideShow: sideshow,


                      )
                  ],
                ),
              ),

              players==null?Container(): player2==null?Container():players[player2]['username']==null?Container():
              Positioned(
                top: MediaQuery.of(context).size.width*0.31,
                left: MediaQuery.of(context).size.width*0.0750,
                child: Row(
                  children: [

                    Stack(
                      // clipBehavior:Clip.none,
                      children: [
                        turn=='2'? BreathingGlowingButton(
                            height: MediaQuery.of(context).size.height*0.20,
                            width:  MediaQuery.of(context).size.width*0.10,
                            onTap: (){},
                            buttonBackgroundColor: Colors.transparent,
                            glowColor: Colors.yellow,
                            child:Container(
                              height: MediaQuery.of(context).size.height*0.20,
                              width:  MediaQuery.of(context).size.width*0.10,
                            )):Container(),
                        InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder:
                                    (BuildContext context ) =>Guest_Profile(id: players[player2]['rusers_id'],
                                  img: players[player2]['userimage'],
                                  name: players[player2]['username'],
                                  win: players[player2]['Totalwin'], tableno: table,
                                )
                            );
                          },
                          child: keyl==cartKey2?AddToCartIcon(
                              key: keyl,
                              child: Playerframe(
                                userid: players[player2]['rusers_id'].toString(),
                                playerStatus: players[player2]['stutus'].toString(),
                                userimage: players[player2]['userimage'].toString(),
                                balance:  players[player2]['balance'].toString(),
                                winid: winid,
                              )):Playerframe(
                            userid: players[player2]['rusers_id'].toString(),
                            playerStatus: players[player2]['stutus'].toString(),
                            userimage: players[player2]['userimage'].toString(),
                            balance:  players[player2]['balance'].toString(),
                            winid: winid,
                          ),
                        ),
                        currentplay!=players[player2]['rusers_id'].toString()?Container():

                        Positioned(
                            top:MediaQuery.of(context).size.height*0.030,
                            left:-MediaQuery.of(context).size.width*0.01 ,
                            child: turn=='2'? _AnimatedLiquidLinearProgressIndicator():Container()
                        ),

                      ],
                    ),
                    PlayerCard(
                      card1:carddata[player2]['cardimage1']==null?'0': carddata[player2]['cardimage1'].toString(),
                      card2: carddata[player2]['cardimage2']==null?'0': carddata[player2]['cardimage2'].toString(),
                      card3: carddata[player2]['cardimage3']==null?'0': carddata[player2]['cardimage3'].toString(),
                      status: carddata[player2]['status'].toString(),
                      showstatus: carddata[player2]['show_status']==null?'0':carddata[player2]['show_status'].toString(),
                      pack: '0',
                      SideShow: sideshow,


                    )
                  ],
                ),
              ),

              players==null?Container():player3==null?Container(): players[player3]['username']==null?Container():
              Positioned(
                top: MediaQuery.of(context).size.width*0.15,
                left: MediaQuery.of(context).size.width*0.255,
                child: Column(
                  children: [

                    Stack(
                      clipBehavior:Clip.none,
                      children: [
                        turn=='3'? BreathingGlowingButton(
                            height: MediaQuery.of(context).size.height*0.20,
                            width:  MediaQuery.of(context).size.width*0.10,
                            onTap: (){},
                            buttonBackgroundColor: Colors.transparent,
                            glowColor: Colors.yellow,
                            child:Container(
                              height: MediaQuery.of(context).size.height*0.20,
                              width:  MediaQuery.of(context).size.width*0.10,
                            )):Container(),
                        InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder:
                                    (BuildContext context ) =>Guest_Profile(id: players[player3]['rusers_id'],
                                  img: players[player3]['userimage'],
                                  name: players[player3]['username'],
                                  win: players[player3]['Totalwin'], tableno: table,
                                )
                            );
                          },
                          child: keyl==cartKey3?AddToCartIcon(
                              key: keyl,
                              child: Playerframe(
                                userid: players[player3]['rusers_id'].toString(),
                                playerStatus: players[player3]['stutus'].toString(),
                                userimage: players[player3]['userimage'].toString(),
                                balance:  players[player3]['balance'].toString(),
                                winid: winid,
                              )):Playerframe(
                            userid: players[player3]['rusers_id'].toString(),
                            playerStatus: players[player3]['stutus'].toString(),
                            userimage: players[player3]['userimage'].toString(),
                            balance:  players[player3]['balance'].toString(),
                            winid: winid,
                          ),
                        ),
                        currentplay!=players[player3]['rusers_id'].toString()?Container():

                        Positioned(
                            top:MediaQuery.of(context).size.height*0.030,
                            left:-MediaQuery.of(context).size.width*0.01 ,
                            child: turn=='3'? _AnimatedLiquidLinearProgressIndicator():Container()
                        ),

                      ],
                    ),
                    PlayerCard(
                      card1:carddata[player3]['cardimage1']==null?'0': carddata[player3]['cardimage1'].toString(),
                      card2: carddata[player3]['cardimage2']==null?'0': carddata[player3]['cardimage2'].toString(),
                      card3: carddata[player3]['cardimage3']==null?'0': carddata[player3]['cardimage3'].toString(),
                      status: carddata[player3]['status'].toString(),
                      showstatus: carddata[player3]['show_status']==null?'0':carddata[player3]['show_status'].toString(),
                      pack: '0',
                      SideShow: sideshow,


                    )
                  ],
                ),

              ),

              players==null?Container(): player4==null?Container():players[player4]['username']==null?Container():
              Positioned(
                top: MediaQuery.of(context).size.width*0.15,
                right: MediaQuery.of(context).size.width*0.255,
                child: Column(
                  children: [
                    Stack(
                      clipBehavior:Clip.none,
                      children: [
                        turn=='3'? BreathingGlowingButton(
                            height: MediaQuery.of(context).size.height*0.20,
                            width:  MediaQuery.of(context).size.width*0.10,
                            onTap: (){},
                            buttonBackgroundColor: Colors.transparent,
                            glowColor: Colors.yellow,
                            child:Container(
                              height: MediaQuery.of(context).size.height*0.20,
                              width:  MediaQuery.of(context).size.width*0.10,
                            )):Container(),
                        InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder:
                                    (BuildContext context ) =>Guest_Profile(id: players[player4]['rusers_id'],
                                  img: players[player4]['userimage'],
                                  name: players[player4]['username'],
                                  win: players[player4]['Totalwin'], tableno: table,
                                )
                            );
                          },
                          child: keyl==cartKey3?AddToCartIcon(
                              key: keyl,
                              child: Playerframe(
                                userid: players[player4]['rusers_id'].toString(),
                                playerStatus: players[player4]['stutus'].toString(),
                                userimage: players[player4]['userimage'].toString(),
                                balance:  players[player4]['balance'].toString(),
                                winid: winid,
                              )):Playerframe(
                            userid: players[player4]['rusers_id'].toString(),
                            playerStatus: players[player4]['stutus'].toString(),
                            userimage: players[player4]['userimage'].toString(),
                            balance:  players[player4]['balance'].toString(),
                            winid: winid,
                          ),
                        ),
                        currentplay!=players[player4]['rusers_id'].toString()?Container():

                        Positioned(
                            top:MediaQuery.of(context).size.height*0.030,
                            left:-MediaQuery.of(context).size.width*0.01 ,
                            child: turn=='3'? _AnimatedLiquidLinearProgressIndicator():Container()
                        ),

                      ],
                    ),
                    PlayerCard(
                      card1:carddata[player4]['cardimage1']==null?'0': carddata[player4]['cardimage1'].toString(),
                      card2: carddata[player4]['cardimage2']==null?'0': carddata[player4]['cardimage2'].toString(),
                      card3: carddata[player4]['cardimage3']==null?'0': carddata[player4]['cardimage3'].toString(),
                      status: carddata[player4]['status'].toString(),
                      showstatus: carddata[player4]['show_status']==null?'0':carddata[player4]['show_status'].toString(),
                      pack: '0',
                      SideShow: sideshow,


                    )
                  ],
                ),
              ),

              players==null?Container(): player5==null?Container():players[player5]['username']==null?Container():
              Positioned(
                top: MediaQuery.of(context).size.width*0.31,
                right: MediaQuery.of(context).size.width*0.0650,
                child: Row(
                  children: [
                    PlayerCard(
                      card1:carddata[player5]['cardimage1']==null?'0': carddata[player5]['cardimage1'].toString(),
                      card2: carddata[player5]['cardimage2']==null?'0': carddata[player5]['cardimage2'].toString(),
                      card3: carddata[player5]['cardimage3']==null?'0': carddata[player5]['cardimage3'].toString(),
                      status: carddata[player5]['status'].toString(),
                      showstatus: carddata[player5]['show_status']==null?'0':carddata[player5]['show_status'].toString(),
                      pack: '0',
                      SideShow: sideshow,
                    ),

                    Stack(
                      clipBehavior:Clip.none,
                      children: [
                        turn=='3'? BreathingGlowingButton(
                            height: MediaQuery.of(context).size.height*0.20,
                            width:  MediaQuery.of(context).size.width*0.10,
                            onTap: (){},
                            buttonBackgroundColor: Colors.transparent,
                            glowColor: Colors.yellow,
                            child:Container(
                              height: MediaQuery.of(context).size.height*0.20,
                              width:  MediaQuery.of(context).size.width*0.10,
                            )):Container(),
                        InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder:
                                    (BuildContext context ) =>Guest_Profile(id: players[player4]['rusers_id'],
                                  img: players[player5]['userimage'],
                                  name: players[player5]['username'],
                                  win: players[player5]['Totalwin'], tableno: table,
                                )
                            );
                          },
                          child: keyl==cartKey3?AddToCartIcon(
                              key: keyl,
                              child: Playerframe(
                                userid: players[player5]['rusers_id'].toString(),
                                playerStatus: players[player5]['stutus'].toString(),
                                userimage: players[player5]['userimage'].toString(),
                                balance:  players[player5]['balance'].toString(),
                                winid: winid,
                              )):Playerframe(
                            userid: players[player5]['rusers_id'].toString(),
                            playerStatus: players[player5]['stutus'].toString(),
                            userimage: players[player5]['userimage'].toString(),
                            balance:  players[player5]['balance'].toString(),
                            winid: winid,
                          ),
                        ),
                        currentplay!=players[player5]['rusers_id'].toString()?Container():

                        Positioned(
                            top:MediaQuery.of(context).size.height*0.030,
                            left:-MediaQuery.of(context).size.width*0.01 ,
                            child: turn=='3'? _AnimatedLiquidLinearProgressIndicator():Container()
                        ),

                      ],
                    ),
                  ],
                ),
              ),




/// Bottom  work
              gamestart==true && slidereq==false?
              Positioned(
                bottom: MediaQuery.of(context).size.width * 0.0,
                left: MediaQuery.of(context).size.width * 0.13,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.14,
                  width: MediaQuery.of(context).size.width * 0.99,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/playbottombar.png"),
                        fit: BoxFit.fill),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).viewInsets.top + 12,
                            left: MediaQuery.of(context).viewInsets.top + 50),
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.0100,
                            ),
                            InkWell(
                              onTap: (){
                              },
                              child: Container(
                                height: MediaQuery.of(context).size.height * 0.0900,
                                width: MediaQuery.of(context).size.width * 0.12,
                                decoration: BoxDecoration(
                                  image: pack==true?DecorationImage(
                                      image: AssetImage("assets/images/pack1.png"),
                                      colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),

                                      fit: BoxFit.fill):DecorationImage(
                                      image: AssetImage("assets/images/pack1.png"),

                                      fit: BoxFit.fill),
                                ),
                                child: Center(
                                    child: Text(
                                      "Pack",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18 *
                                              MediaQuery.textScaleFactorOf(context),
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.0500,
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    int amo1=chaal;
                                    int dev=2;
                                    var amo=amo1/dev;
                                    if(inc==true && pack==false) {
                                      setState(() {
                                        chaal = amo.toInt();
                                        inc=false;
                                      });
                                    }
                                  },
                                  child: Container(
                                    height: MediaQuery.of(context).size.height * 0.0720,
                                    width: MediaQuery.of(context).size.width * 0.0520,
                                    decoration: BoxDecoration(
                                        image:pack==true?
                                        DecorationImage(
                                            image:  AssetImage("assets/images/minusboot.png"),
                                            colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
                                            fit: BoxFit.fill):
                                        inc!=true?
                                        DecorationImage(
                                            image:  AssetImage("assets/images/minusboot.png"),
                                            colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
                                            fit: BoxFit.fill):  DecorationImage(
                                            image:  AssetImage("assets/images/minusboot.png"),
                                            fit: BoxFit.fill)),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: MediaQuery.of(context).viewInsets.top +
                                          3.0),
                                  child: Container(
                                    height:
                                    MediaQuery.of(context).size.height * 0.0550,
                                    width: MediaQuery.of(context).size.width * 0.13,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/bootbutton.png"),
                                            fit: BoxFit.fill)),
                                    child: Center(
                                        child: Text(
                                          chaal.toString(),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    var amo=chaal*2;
                                    if(inc==false && pack==false) {
                                      setState(() {
                                        chaal = amo;
                                        inc=true;
                                      });
                                    }
                                  },
                                  child: Container(
                                    height: MediaQuery.of(context).size.height * 0.0710,
                                    width: MediaQuery.of(context).size.width * 0.0500,
                                    decoration: BoxDecoration(
                                        image: pack==true?DecorationImage(
                                            image: AssetImage("assets/images/plusboot.png"),
                                            colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),

                                            fit: BoxFit.fill):inc!=false?DecorationImage(
                                            image: AssetImage("assets/images/plusboot.png"),
                                            colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),

                                            fit: BoxFit.fill):DecorationImage(
                                            image: AssetImage("assets/images/plusboot.png"),
                                            fit: BoxFit.fill)),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.0500,
                            ),
                            InkWell(

                              onTap: (){
                                setState(() {
                                  inc=false;
                                });

                              },
                              child: Container(
                                height: MediaQuery.of(context).size.height * 0.0900,
                                width: MediaQuery.of(context).size.width * 0.12,
                                decoration: BoxDecoration(
                                  image: pack==true?DecorationImage(
                                      image: AssetImage("assets/images/pack1.png"),
                                      colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),

                                      fit: BoxFit.fill):
                                  DecorationImage(
                                      // colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),

                                      image: AssetImage("assets/images/pack1.png"),

                                      fit: BoxFit.fill),
                                ),
                                child: Center(
                                    child: Text(
                                      show==true?"Chaal" :"Blind",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18 *
                                              MediaQuery.textScaleFactorOf(context),
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                            ),
                            show==false?InkWell(
                              onTap: (){
                                setState(() {
                                  show=true;
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),

                                child: Container(
                                  height: MediaQuery.of(context).size.height * 0.0900,
                                  width: MediaQuery.of(context).size.width * 0.12,
                                  decoration: BoxDecoration(
                                    image: pack==true?DecorationImage(
                                        image: AssetImage("assets/images/pack1.png"),
                                        colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),

                                        fit: BoxFit.fill):
                                    DecorationImage(
                                      // colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),

                                        image: AssetImage("assets/images/pack1.png"),

                                        fit: BoxFit.fill),
                                  ),
                                  child: Center(
                                      child: Text(
                                        "Show",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18 *
                                                MediaQuery.textScaleFactorOf(context),
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                              ),
                            ):InkWell(
                              onTap: (){
                                },
                              child: Padding(
                                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),

                                child: Container(
                                  height: MediaQuery.of(context).size.height * 0.0900,
                                  width: MediaQuery.of(context).size.width * 0.16,
                                  decoration: BoxDecoration(
                                    image: pack==true?DecorationImage(
                                        image: AssetImage("assets/images/pack1.png"),
                                        colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),

                                        fit: BoxFit.fill):
                                    DecorationImage(
                                        // colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),

                                        image: AssetImage("assets/images/pack1.png"),

                                        fit: BoxFit.fill),
                                  ),
                                  child: Center(
                                      child: Text(
                                        "Side Show",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18 *
                                                MediaQuery.textScaleFactorOf(context),
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ):
              slidereq==true && gamestart==true?
              Positioned(
                bottom: -MediaQuery.of(context).size.width*0.01,
                left: MediaQuery.of(context).size.width*0.13,
                child: Container(
                  padding: EdgeInsets.only(right:MediaQuery.of(context).size.width*0.2),
                  height: MediaQuery.of(context).size.height*0.12,
                  width:  MediaQuery.of(context).size.width*0.99,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/slideshowre.png"),
                        fit: BoxFit.fill),
                  ),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width:MediaQuery.of(context).size.width*0.50,
                            height:MediaQuery.of(context).size.height*0.06,
                            child: LinearPercentIndicator(
                              width: MediaQuery.of(context).size.width*0.40,
                              animation: slidereq,
                              lineHeight: 8.0,
                              animationDuration: 3000,
                              percent: 0.5,
                              animateFromLastPercent: true,
                              center: Text(""),
                              progressColor: Colors.red,
                            ),
                          ),
                          Center(child: Text('Accept Slide Show Request from user ?', style: TextStyle(color:Colors.white,fontSize: 10, fontWeight: FontWeight.w900),)),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                        onTap:()async{
                          await http.get(Uri.parse('https://apponrent.co.in/rlg/api/slideshowreq_update.php?myuserid=$nextposition&oppuserid=$useid&gid=$gid&tableno=$table&status=2'));

                        },
                          child: Image.asset('assets/images/wrong.png')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap:()async{
                            await http.get(Uri.parse('https://apponrent.co.in/rlg/api/slideshowreq_update.php?myuserid=$nextposition&oppuserid=$useid&gid=$gid&tableno=$table&status=1'));
                            //
                            // setState(() {
                            //   sideshow=true;
                            //   slidereq=false;
                            //   next='1';
                            // });
                          },
                            child: Image.asset('assets/images/right.png')),
                      ),
                    ],
                  ),
                ),
              ):
              Positioned(
                bottom: MediaQuery.of(context).size.width*0.0,
                left: MediaQuery.of(context).size.width*0.13,
                child: Container(
                  height: MediaQuery.of(context).size.height*0.14,
                  width:  MediaQuery.of(context).size.width*0.99,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/playbottombar.png"),
                        fit: BoxFit.fill),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 60, top: MediaQuery.of(context).viewInsets.top + 7),
                            child: Text(
                              "Max Blind",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16* MediaQuery.textScaleFactorOf(context),
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 17, top: MediaQuery.of(context).viewInsets.top + 5),
                            child: Text(
                              pos==null?0:pos['blind_limite'],
                              style: TextStyle(
                                  color: Colors.amber,
                                  fontSize: 17* MediaQuery.textScaleFactorOf(context),
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 130, top: MediaQuery.of(context).viewInsets.top + 5),
                            child: Text(
                              "Boot Amount",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16* MediaQuery.textScaleFactorOf(context),
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 17, top: MediaQuery.of(context).viewInsets.top + 5),
                            child: Text(

                              pos==null?0:pos['start_price'],
                              style: TextStyle(
                                  color: Colors.amber,
                                  fontSize: 17* MediaQuery.textScaleFactorOf(context),
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 60, top: MediaQuery.of(context).viewInsets.top + 0),
                            child: Text(
                              "Max Chaal",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16* MediaQuery.textScaleFactorOf(context),
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 14, top: MediaQuery.of(context).viewInsets.top + 0),
                            child: Text(

                              pos==null?0:pos['end_price'],
                              style: TextStyle(
                                  color: Colors.amber,
                                  fontSize: 17* MediaQuery.textScaleFactorOf(context),
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 72, top: MediaQuery.of(context).viewInsets.top + 0),
                            child: Text(
                              "Max Pot",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16* MediaQuery.textScaleFactorOf(context),
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left:  MediaQuery.of(context).viewInsets.left +17, top:  MediaQuery.of(context).viewInsets.top +0),
                            child: Text(

                              pos==null?0:pos['gamelimit'],
                              style: TextStyle(
                                  color: Colors.amber,
                                  fontSize: 17* MediaQuery.textScaleFactorOf(context),
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          // Padding(
                          //   padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 42, bottom: MediaQuery.of(context).viewInsets.bottom + 8),
                          //   child: Text(
                          //     "Please wait for next game",
                          //     style: TextStyle(
                          //         color: Colors.amber,
                          //         fontSize: 11* MediaQuery.textScaleFactorOf(context),
                          //         fontWeight: FontWeight.w500),
                          //   ),
                          // )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.width*0.43,
                left: MediaQuery.of(context).size.width*0.0400,
                child: InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context)=>Comment(tableno:table)
                    );
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.15,
                    width:  MediaQuery.of(context).size.width*0.0900,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/comment.png"),
                            fit: BoxFit.fill)),
                  ),
                ),
              ),
              Positioned(
                bottom: MediaQuery.of( context).size.height*0.10,
                right: MediaQuery.of(context).size.width*0.001,
                child: InkWell(
                  onTap: (){    lastpos();
                  },
                  child: AppListItem(
                  onClick: listClick,
                  index: 1,
              ),
                ),),
              players==null?Container():player1==null?Container(): players[player1]['totalamont']==null?Container():
              Positioned(
                top:MediaQuery.of(context).size.height*0.45,
                  left: MediaQuery.of(context).size.height*1.0,
                  

                  child:Center(

                      child:Container(
                        height:MediaQuery.of(context).size.height*0.25,
                        width: MediaQuery.of(context).size.width*0.12,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/browntxtfield.png')

                            )
                        ),
                        child: Center(child: Text(players[player1]['totalamont'].toString(),style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 15),)),
                      )
                  )
              ),

              Positioned(child: Container(


                  height: MediaQuery.of(context).size.height*0.90,
                  width: MediaQuery.of(context).size.width,
                  child: UserPlayTransition(useid: useid, table: table, gid: gid))),

            ],
          ),
        ),
      ),
    );
  }

  void listClick(GlobalKey widgetKey) async {
    setState(() {
      chalani=false ;
    });
    await runAddToCartAnimation(widgetKey);
    await keyl.currentState!
        .runCartAnimation((++_cartQuantityItems).toString());

  }
}




class AppListItem extends StatelessWidget {
  final GlobalKey widgetKey = GlobalKey();
  final int index;
  final void Function(GlobalKey) onClick;

  AppListItem({super.key, required this.onClick, required this.index});
  @override
  Widget build(BuildContext context) {
    //  Container is mandatory. It can hold images or whatever you want
    Container mandatoryContainer = Container(
      key: widgetKey,
      width: 60,
      height: 60,
      color: Colors.transparent,
      child: Image.network(
        "https://cdn.pixabay.com/photo/2016/12/22/10/01/hand-1925091_1280.png",
        width: 60,
        height: 60,
      ),
    );

    return InkWell(
      onTap: () => onClick(widgetKey),
      child: mandatoryContainer,
    );
  }
}


class CoinItem extends StatelessWidget {
  final GlobalKey widgetKey = GlobalKey();
  final int index;
  final void Function(GlobalKey) onClick;
final Widget child;
  CoinItem({super.key, required this.onClick, required this.index, required this.child});
  @override
  Widget build(BuildContext context) {
    //  Container is mandatory. It can hold images or whatever you want
    Container mandatoryContainer = Container(
      key: widgetKey,
      width: 30,
      height: 30,
      color: Colors.transparent,
      child: child,
    );

    return InkWell(
      onTap: () => onClick(widgetKey),
      child: mandatoryContainer,
    );
  }
}


class _AnimatedLiquidLinearProgressIndicator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>
      _AnimatedLiquidLinearProgressIndicatorState();
}

class _AnimatedLiquidLinearProgressIndicatorState
    extends State<_AnimatedLiquidLinearProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 12),
    );

    _animationController.addListener(() => setState(() {}));
    _animationController.repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final percentage = _animationController.value * 100;
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width*0.12,
        height: MediaQuery.of(context).size.height*0.15,
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: RotatedBox(
          quarterTurns: 135,

          child: LiquidLinearProgressIndicator(
            value: _animationController.value,
            backgroundColor: Colors.transparent,
            valueColor: AlwaysStoppedAnimation(percentage <=90?Colors.blue.withOpacity(0.7):Colors.red.withOpacity(0.7)),
            borderRadius: 0.0,
            borderColor: Colors.transparent,
            borderWidth: 0,
            center: Text(
                ''
            ),
          ),
        ),
      ),

    );
  }
}

