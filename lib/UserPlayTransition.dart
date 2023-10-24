import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:http/http.dart'as http;
import 'package:ultimate_teen_patti/transation/Progessbar.dart';


class UserPlayTransition extends StatefulWidget {
  final int useid;
  final String table;
  final int gid;
   UserPlayTransition({Key? key, required this.useid, required this.table, required this.gid}) : super(key: key);

  @override
  State<UserPlayTransition> createState() => _UserPlayTransitionState();
}

class _UserPlayTransitionState extends State<UserPlayTransition> {

  late Timer _timer;

  @override
  void initState() {

      // TODO: implement initState
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
currenanis();
    });
  }

  int mypos=1;
  int tans1pos=0;
  int tans2pos=0;
  Widget gifs= Image.asset('assets/images/slideshow.gif');
  // Image gifs= Image.asset('assets/images/roulette.png');
  double _currentValue = 0;
// final transurl='https://rlg.apponrent.co.in/api/viewtransition.php?gid=2&tableno=1&userid=3';
  setEndPressed(double value) {
    setState(() {
      _currentValue = value;
    });
  }
String idl='0';
  currenanis()async{
    showmessage();
    setState(() {
      _currentValue=0;
    });
               final useid=widget.useid;
               final table=widget.table;
               final gid=widget.gid;
               print('https://apponrent.co.in/rlg/api/viewtransition.php?user_id=$useid&tableno=$table&gid=$gid');
    final resp= await http.get(Uri.parse('https://apponrent.co.in/rlg/api/viewtransition.php?userid=$useid&tableno=$table&gid=$gid'));
    final data=jsonDecode(resp.body);
    if(data['data']!=null) {
      if (idl != data['data']['id'] && data['data']['type'] != '1') {
        setState(() {
          idl = data['data']['id'];
          tans1pos = data['trans1'];
          tans2pos = data['trans2'] == null ? 0 : data['trans2'];
          gifs =
          // data['data']['type'] == '1' ? Image.asset('assets/images/slideshow.gif') :
          data['data']['type'] == '2'
              ? Image.network(
              'https://cdn.pixabay.com/photo/2016/12/22/10/01/hand-1925091_1280.png')
              :
          data['data']['type'] == '3' ? Container(
              height: 20, width: 20,
              child: Image.asset('assets/images/roulette.png',)) :
          Image.asset('assets/images/slideshow.gif')
          ;
          _currentValue = 100;
          // nextposition= data['nextposition'];
        });
      }
    }
//elseif()
    if(data['data']!=null) {
      if (idl == data['data']['id'] && data['data']['type'] == '1') {
        setState(() {
          idl = data['data']['id'];
          tans1pos = data['trans1'];
          tans2pos = data['trans2'] == null ? 0 : data['trans2'];
          gifs = Image.asset('assets/images/slideshow.gif');
          _currentValue = 100;
          // nextposition= data['nextposition'];
        });
      }
    }
  }
String mid='';
  String message='';
  String sendername='';
  showmessage()async {
    final useid = widget.useid;
    final table = widget.table;
    final gid = widget.gid;

    final url = 'https://rlg.apponrent.co.in/api/show_message.php?receiverid=$useid&tableno=$table';
    print(url);
    final res = await http.get(Uri.parse(url));
    final data = jsonDecode(res.body);
    if (data['error'] != 400) {
      if (data != null) {
        if (data['data']['id'] != mid) {
          setState(() {
            mid = data[0]['id'];
            message = data[0]['message'];
            sendername = data[0]['sendername'];
          });
        } else {
          setState(() {
            mid = data[0]['id'];
            message = '';
            sendername = '';
          });
        }
      }
    }
  }
  // https://rlg.apponrent.co.in/api/show_message.php?receiverid=3&tableno=145

  Widget buildFloatingButton(String text, VoidCallback callback) {
    TextStyle roundTextStyle =
    const TextStyle(fontSize: 16.0, color: Colors.white);
    return new FloatingActionButton(
        child: new Text(text, style: roundTextStyle), onPressed: callback);
  }

  @override
  Widget build(BuildContext context) {
    return Container(

      child: mypos==1?
      Stack(
        clipBehavior: Clip.none,
        children: [
          // Positioned(
          //   top: 30,
          //     left: 150,
          //     child: ElevatedButton(onPressed: () {
          //       print('rrrrr');
          //       setState(() {
          //         _currentValue=100;
          //         mypos=1;
          //         tans1pos=3;
          //         tans2pos=5;
          //       });
          //     },
          //       child: Text('reset'),
          //
          //     )),
          // Positioned(
          //   top: 30,
          //     left: 290,
          //     child: ElevatedButton(onPressed: () {
          //       print('rrrrr');
          //       setState(() {
          //         _currentValue=0;
          //       });
          //     },
          //       child: Text('reset 2'),
          //
          //     )),


          tans1pos==2 && tans2pos==1?
          Positioned(
              bottom: MediaQuery.of(context).size.height*0.07,
              left: MediaQuery.of(context).size.width*0.18,
              child:
              Transform.rotate(
                angle: math.pi /13.81,
                child: Container(
                    height: MediaQuery.of(context).size.height*0.18,
                    width: MediaQuery.of(context).size.width*0.25,
                    child: FAProgressBar(
                      backgroundColor:Colors.transparent,
                      progressColor:Colors.transparent,
                      child: gifs,
                      currentValue: _currentValue,
                      displayText: '%',
                    )
                   ),
              )):
          tans1pos==3 && tans2pos==2? Positioned(
              bottom: MediaQuery.of(context).size.height*0.25,
              left: MediaQuery.of(context).size.width*0.10,
              child:
              Transform.rotate(
                angle: math.pi /1.3,
                child: Container(
                    height: MediaQuery.of(context).size.height*0.18,
                    width: MediaQuery.of(context).size.width*0.20,
                    child: Container(
                    height: MediaQuery.of(context).size.height*0.18,
                    width: MediaQuery.of(context).size.width*0.25,
                    child: FAProgressBar(
                      backgroundColor:Colors.transparent,
                      progressColor:Colors.transparent,
                      child: gifs,
                      currentValue: _currentValue,
                      displayText: '%',
                    )
                   )),
              )):
          tans1pos==4 && tans2pos==3? Positioned(
              top: MediaQuery.of(context).size.height*0.35,
              left: MediaQuery.of(context).size.width*0.34,
              child:
              Transform.rotate(
                angle: math.pi /1.01,
                child: Container(
                    height: MediaQuery.of(context).size.height*0.18,
                    width: MediaQuery.of(context).size.width*0.32,
                    child: Container(
                    height: MediaQuery.of(context).size.height*0.18,
                    width: MediaQuery.of(context).size.width*0.25,
                    child: FAProgressBar(
                      backgroundColor:Colors.transparent,
                      progressColor:Colors.transparent,
                      child: gifs,
                      currentValue: _currentValue,
                      displayText: '%',
                    )
                   )),
              )
          ):
          tans1pos==5 && tans2pos==4? Positioned(
              bottom: MediaQuery.of(context).size.height*0.35,
              right: MediaQuery.of(context).size.width*0.10,
              child:
              Transform.rotate(
                angle: -math.pi /1.31,
                child: Container(

                    height: MediaQuery.of(context).size.height*0.18,
                    width: MediaQuery.of(context).size.width*0.20,
                    child: Container(
                        height: MediaQuery.of(context).size.height*0.18,
                        width: MediaQuery.of(context).size.width*0.25,
                        child: FAProgressBar(
                          backgroundColor:Colors.transparent,
                          progressColor:Colors.transparent,
                          child: gifs,
                          currentValue: _currentValue,
                          displayText: '%',
                        )
                    )),
              )
          ):
          tans1pos==5 && tans2pos==1? Positioned(
              bottom: MediaQuery.of(context).size.height*0.07,
              right: MediaQuery.of(context).size.width*0.20,
              child:
              Transform.rotate(
                angle: -math.pi /0.98,
                child: Container(
                    height: MediaQuery.of(context).size.height*0.18,
                    width: MediaQuery.of(context).size.width*0.30,
                    child: Container(
                    height: MediaQuery.of(context).size.height*0.18,
                    width: MediaQuery.of(context).size.width*0.25,
                    child: FAProgressBar(
                      backgroundColor:Colors.transparent,
                      progressColor:Colors.transparent,
                      child: gifs,
                      currentValue: _currentValue,
                      displayText: '%',
                    )
                   )),
              )
          ):

              ///repeat one by one '1'
          tans1pos== 3 && tans2pos==1? Positioned(
              bottom: MediaQuery.of(context).size.height*0.20,
              left: MediaQuery.of(context).size.width*0.28,
              child:
              Transform.rotate(
                angle: math.pi /2.98,
                child: Container(
                    height: MediaQuery.of(context).size.height*0.18,
                    width: MediaQuery.of(context).size.width*0.20,
                    child: Container(
                    height: MediaQuery.of(context).size.height*0.18,
                    width: MediaQuery.of(context).size.width*0.25,
                    child: FAProgressBar(
                      backgroundColor:Colors.transparent,
                      progressColor:Colors.transparent,
                      child: gifs,
                      currentValue: _currentValue,
                      displayText: '%',
                    )
                   )),
              )):
          tans1pos== 4 && tans2pos==1? Positioned(
              bottom: MediaQuery.of(context).size.height*0.25,
              right: MediaQuery.of(context).size.width*0.33,
              child:
              Transform.rotate(
                angle: math.pi /1.30,
                child: Container(
                    height: MediaQuery.of(context).size.height*0.18,
                    width: MediaQuery.of(context).size.width*0.20,
                    child: Container(
                    height: MediaQuery.of(context).size.height*0.18,
                    width: MediaQuery.of(context).size.width*0.25,
                    child: FAProgressBar(
                      backgroundColor:Colors.transparent,
                      progressColor:Colors.transparent,
                      child: gifs,
                      currentValue: _currentValue,
                      displayText: '%',
                    )
                   )),
              )):

          tans1pos== 1 && tans2pos==5? Positioned(
              bottom: MediaQuery.of(context).size.height*0.07,
              right: MediaQuery.of(context).size.width*0.15,
              child:
              Transform.rotate(
                angle: math.pi /55.30,
                child: Container(
                    height: MediaQuery.of(context).size.height*0.18,
                    width: MediaQuery.of(context).size.width*0.35,
                    child: Container(
                    height: MediaQuery.of(context).size.height*0.18,
                    width: MediaQuery.of(context).size.width*0.25,
                    child: FAProgressBar(
                      backgroundColor:Colors.transparent,
                      progressColor:Colors.transparent,
                      child: gifs,
                      currentValue: _currentValue,
                      displayText: '%',
                    )
                   )),
              )):


          ///repeat one by one '2'
          tans1pos== 1 && tans2pos==2? Positioned(
              bottom: MediaQuery.of(context).size.height*0.07,
              left: MediaQuery.of(context).size.width*0.15,
              child:
              Transform.rotate(
                angle: math.pi /0.98,
                child: Container(
                    height: MediaQuery.of(context).size.height*0.18,
                    width: MediaQuery.of(context).size.width*0.35,
                    child: Container(
                    height: MediaQuery.of(context).size.height*0.18,
                    width: MediaQuery.of(context).size.width*0.25,
                    child: FAProgressBar(
                      backgroundColor:Colors.transparent,
                      progressColor:Colors.transparent,
                      child: gifs,
                      currentValue: _currentValue,
                      displayText: '%',
                    )
                   )),
              )):
          tans1pos== 4 && tans2pos==2? Positioned(
              bottom: MediaQuery.of(context).size.height*0.30,
              right: MediaQuery.of(context).size.width*0.30,
              child:
              Transform.rotate(
                angle: -math.pi /0.90,
                child: Container(
                    height: MediaQuery.of(context).size.height*0.18,
                    width: MediaQuery.of(context).size.width*0.57,
                    child: Container(
                    height: MediaQuery.of(context).size.height*0.18,
                    width: MediaQuery.of(context).size.width*0.25,
                    child: FAProgressBar(
                      backgroundColor:Colors.transparent,
                      progressColor:Colors.transparent,
                      child: gifs,
                      currentValue: _currentValue,
                      displayText: '%',
                    )
                   )),
              )):
          tans1pos== 5 && tans2pos==2? Positioned(
              bottom: MediaQuery.of(context).size.height*0.18,
              right: MediaQuery.of(context).size.width*0.15,
              child:
              Transform.rotate(
                angle: -math.pi /1.0,
                child: Container(
                    height: MediaQuery.of(context).size.height*0.18,
                    width: MediaQuery.of(context).size.width*0.75,
                    child: Container(
                    height: MediaQuery.of(context).size.height*0.18,
                    width: MediaQuery.of(context).size.width*0.25,
                    child: FAProgressBar(
                      backgroundColor:Colors.transparent,
                      progressColor:Colors.transparent,
                      child: gifs,
                      currentValue: _currentValue,
                      displayText: '%',
                    )
                   )),
              )):

          ///repeat one by one '3'
          tans1pos== 1 && tans2pos==3? Positioned(
              bottom: MediaQuery.of(context).size.height*0.25,
              left: MediaQuery.of(context).size.width*0.27,
              child:
              Transform.rotate(
                angle: math.pi /0.85,
                child: Container(
                    height: MediaQuery.of(context).size.height*0.18,
                    width: MediaQuery.of(context).size.width*0.25,
                    child: Container(
                    height: MediaQuery.of(context).size.height*0.18,
                    width: MediaQuery.of(context).size.width*0.25,
                    child: FAProgressBar(
                      backgroundColor:Colors.transparent,
                      progressColor:Colors.transparent,
                      child: gifs,
                      currentValue: _currentValue,
                      displayText: '%',
                    )
                   )),
              )):
          tans1pos== 2 && tans2pos==3? Positioned(
              bottom: MediaQuery.of(context).size.height*0.20,
              left: MediaQuery.of(context).size.width*0.10,
              child:
              Transform.rotate(
                angle: -math.pi /4.0,
                child: Container(
                    height: MediaQuery.of(context).size.height*0.18,
                    width: MediaQuery.of(context).size.width*0.25,
                    child: Container(
                    height: MediaQuery.of(context).size.height*0.18,
                    width: MediaQuery.of(context).size.width*0.25,
                    child: FAProgressBar(
                      backgroundColor:Colors.transparent,
                      progressColor:Colors.transparent,
                      child: gifs,
                      currentValue: _currentValue,
                      displayText: '%',
                    )
                   )),
              )):
          tans1pos== 5 && tans2pos==3? Positioned(
              bottom: MediaQuery.of(context).size.height*0.25,
              left: MediaQuery.of(context).size.width*0.25,
              child:
              Transform.rotate(
                angle: -math.pi /1.10,
                child: Container(
                    height: MediaQuery.of(context).size.height*0.18,
                    width: MediaQuery.of(context).size.width*0.60,
                    child: Container(
                    height: MediaQuery.of(context).size.height*0.18,
                    width: MediaQuery.of(context).size.width*0.25,
                    child: FAProgressBar(
                      backgroundColor:Colors.transparent,
                      progressColor:Colors.transparent,
                      child: gifs,
                      currentValue: _currentValue,
                      displayText: '%',
                    )
                   )),
              )):


          ///repeat one by one '4'
          tans1pos== 1 && tans2pos==4? Positioned(
              bottom: MediaQuery.of(context).size.height*0.25,
              right: MediaQuery.of(context).size.width*0.25,
              child:
              Transform.rotate(
                angle: -math.pi /0.80,
                child: Container(
                    height: MediaQuery.of(context).size.height*0.18,
                    width: MediaQuery.of(context).size.width*0.30,
                    child: Container(
                    height: MediaQuery.of(context).size.height*0.18,
                    width: MediaQuery.of(context).size.width*0.25,
                    child: FAProgressBar(
                      backgroundColor:Colors.transparent,
                      progressColor:Colors.transparent,
                      child: gifs,
                      currentValue: _currentValue,
                      displayText: '%',
                    )
                   )),
              )):
          tans1pos== 2 && tans2pos==4? Positioned(
              bottom: MediaQuery.of(context).size.height*0.25,
              right: MediaQuery.of(context).size.width*0.28,
              child:
              Transform.rotate(
                angle: math.pi /1.1,
                child: Container(
                    height: MediaQuery.of(context).size.height*0.18,
                    width: MediaQuery.of(context).size.width*0.60,
                    child: Container(
                    height: MediaQuery.of(context).size.height*0.18,
                    width: MediaQuery.of(context).size.width*0.25,
                    child: FAProgressBar(
                      backgroundColor:Colors.transparent,
                      progressColor:Colors.transparent,
                      child: gifs,
                      currentValue: _currentValue,
                      displayText: '%',
                    )
                   )),
              )):
          tans1pos== 3 && tans2pos==4? Positioned(
              bottom: MediaQuery.of(context).size.height*0.40,
              left: MediaQuery.of(context).size.width*0.33,
              child:
              RotatedBox(
                
                quarterTurns: 90,
                child: Transform.rotate(
                  angle: -math.pi /1.0,
                  child: Container(
                      height: MediaQuery.of(context).size.height*0.18,
                      width: MediaQuery.of(context).size.width*0.35,
                      child: Container(
                    height: MediaQuery.of(context).size.height*0.18,
                    width: MediaQuery.of(context).size.width*0.25,
                    child: FAProgressBar(
                      backgroundColor:Colors.transparent,
                      progressColor:Colors.transparent,
                      child: gifs,
                      currentValue: _currentValue,
                      displayText: '%',
                    )
                   )),
                ),
              )):

          ///repeat one by one '5'
          tans1pos== 4 && tans2pos==5? Positioned(
              bottom: MediaQuery.of(context).size.height*0.25,
              right: MediaQuery.of(context).size.width*0.10,
              child:
              RotatedBox(
                quarterTurns: 90,
                child: Transform.rotate(
          angle: -math.pi /1.40,
            child: Container(
                  height: MediaQuery.of(context).size.height*0.18,
                  width: MediaQuery.of(context).size.width*0.20,
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.18,
                    width: MediaQuery.of(context).size.width*0.25,
                    child: FAProgressBar(
                      backgroundColor:Colors.transparent,
                      progressColor:Colors.transparent,
                      child: gifs,
                      currentValue: _currentValue,
                      displayText: '%',
                    )
                   )),
          ),
              )):
          tans1pos== 2 && tans2pos==5? Positioned(
              bottom: MediaQuery.of(context).size.height*0.18,
              right: MediaQuery.of(context).size.width*0.10,
              child:
              RotatedBox(
                quarterTurns: 90,
                child: Transform.rotate(
                  angle: -math.pi /1.0,
                  child: Container(
                      height: MediaQuery.of(context).size.height*0.18,
                      width: MediaQuery.of(context).size.width*0.80,
                      child: Container(
                    height: MediaQuery.of(context).size.height*0.18,
                    width: MediaQuery.of(context).size.width*0.25,
                    child: FAProgressBar(
                      backgroundColor:Colors.transparent,
                      progressColor:Colors.transparent,
                      child: gifs,
                      currentValue: _currentValue,
                      displayText: '%',
                    )
                   )),
                ),
              )):
          tans1pos== 3 && tans2pos==5? Positioned(
              bottom: MediaQuery.of(context).size.height*0.20,
              left: MediaQuery.of(context).size.width*0.25,
              child:
              RotatedBox(
                quarterTurns: 90 ,
                child: Transform.rotate(
                  angle: math.pi /0.93,
                  child: Container(
                    // color: Colors.red,
                      height: MediaQuery.of(context).size.height*0.18,
                      width: MediaQuery.of(context).size.width*0.70,
                      child: Container(
                    height: MediaQuery.of(context).size.height*0.18,
                    width: MediaQuery.of(context).size.width*0.25,
                    child: FAProgressBar(
                      backgroundColor:Colors.transparent,
                      progressColor:Colors.transparent,
                      child: gifs,
                      currentValue: _currentValue,
                      displayText: '%',
                    )
                   )),
                ),
              )):

          ///repeat one by one coinchal
          tans1pos== 3 && tans2pos==0? Positioned(
              bottom: MediaQuery.of(context).size.height*0.40,
              left: MediaQuery.of(context).size.width*0.33,
              child:
              RotatedBox(

                quarterTurns: 90,
                child: Transform.rotate(
                  angle: -math.pi /1.0,
                  child: Container(
                      height: MediaQuery.of(context).size.height*0.10,
                      width: MediaQuery.of(context).size.height*0.10,
                      child: Container(
                          height: MediaQuery.of(context).size.height*0.10,
                          width: MediaQuery.of(context).size.height*0.10,
                          child: FAProgressBar(
                            backgroundColor:Colors.transparent,
                            progressColor:Colors.transparent,
                            child: gifs,
                            currentValue: _currentValue,
                            displayText: '%',
                          )
                      )),
                ),
              )):
          tans1pos==4 && tans2pos==0? Positioned(
              top: MediaQuery.of(context).size.height*0.40,
              right: MediaQuery.of(context).size.width*0.34,
              child:
              Transform.rotate(
                angle: math.pi /1.01,
                child: Container(
                    height: MediaQuery.of(context).size.height*0.10,
                    width: MediaQuery.of(context).size.width*0.20,
                    child: Container(
                        // color: Colors.red,
                        height: MediaQuery.of(context).size.height*0.10,
                        width: MediaQuery.of(context).size.width*0.40,
                        child: FAProgressBar(
                          backgroundColor:Colors.transparent,
                          progressColor:Colors.transparent,
                          child: gifs,
                          currentValue: _currentValue,
                          displayText: '%',
                        )
                    )),
              )
          ):
          tans1pos==5 && tans2pos==0? Positioned(
              bottom: MediaQuery.of(context).size.height*0.20,
              right: MediaQuery.of(context).size.width*0.15,
              child:
              Transform.rotate(
                angle: math.pi /0.92,
                child: Container(
                  // color: Colors.red,
                    height: MediaQuery.of(context).size.height*0.10,
                    width: MediaQuery.of(context).size.width*0.40,
                    child: Container(
                        height: MediaQuery.of(context).size.height*0.10,
                        width: MediaQuery.of(context).size.height*0.40,
                        child: FAProgressBar(
                          backgroundColor:Colors.transparent,
                          progressColor:Colors.transparent,
                          child: gifs,
                          currentValue: _currentValue,
                          displayText: '%',
                        )
                    )),
              )
          ):
          tans1pos==2 && tans2pos==0? Positioned(
              bottom: MediaQuery.of(context).size.height*0.20,
              left: MediaQuery.of(context).size.width*0.15,
              child:
              RotatedBox(
                quarterTurns: 90,
                child: Transform.rotate(
                  angle: -math.pi /0.92,
                  child: Container(
                    color: Colors.green,

                      height: MediaQuery.of(context).size.height*0.10,
                      width: MediaQuery.of(context).size.height*0.10,
                      child: Container(
                          height: MediaQuery.of(context).size.height*0.10,
                          width: MediaQuery.of(context).size.height*0.10,
                          child: FAProgressBar(
                            backgroundColor:Colors.transparent,
                            progressColor:Colors.transparent,
                            child: gifs,
                            currentValue: _currentValue,
                            displayText: '%',
                          )
                      )),
                ),
              )
          ):
          tans1pos==1 && tans2pos==0? Positioned(
              bottom: MediaQuery.of(context).size.height*0.18,
              left: MediaQuery.of(context).size.width*0.45,
              child:
              RotatedBox(
                quarterTurns: 45,
                child: Transform.rotate(
                  angle: -math.pi /1.05,
                  child: Container(

                      height: MediaQuery.of(context).size.height*0.10,
                      width: MediaQuery.of(context).size.height*0.10,
                      child: Container(
                          height: MediaQuery.of(context).size.height*0.10,
                          width: MediaQuery.of(context).size.height*0.10,
                          child: FAProgressBar(
                            backgroundColor:Colors.transparent,
                            progressColor:Colors.transparent,
                            child: gifs,
                            currentValue: _currentValue,
                            displayText: '%',
                          )
                      )),
                ),
              )
          ):

          Positioned(
              top: 50,
              child:
              Container(
               )),
          message!=''?
          Positioned(
            top:80,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.width * 0.58,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/button.png"),
                        fit: BoxFit.fill)),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).viewInsets.left + 20,
                      top: MediaQuery.of(context).viewInsets.top + 14),
                  child: Center(
                    child: Text(
                      sendername.toString()+' : '+message.toString(),
                      style: TextStyle(
                          color: Color(0xff590100),
                          fontSize:
                          16 * MediaQuery.textScaleFactorOf(context),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )):Container()
        ],
      ):Container(),

    );
  }
}
