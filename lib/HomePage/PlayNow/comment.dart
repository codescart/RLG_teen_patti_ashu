import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ultimate_teen_patti/const.dart';
class Comment extends StatefulWidget {
  final String tableno;
   Comment({Key? key, required this.tableno}) : super(key: key);

  @override
  State<Comment> createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  @override
  void initState() {
    khc();
    // TODO: implement initState
    super.initState();
  }
  TextEditingController _chat = TextEditingController();
  messagesend ({required String message}) async{
    print(message);
    final prefs1 = await SharedPreferences.getInstance();
    final useid=prefs1.getInt('user_id') ?? 0;


    final res=await http.post(Uri.parse(ApiConst.baseurl+'message/sender'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "send_id":"$useid",
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
                          child: TextFormField(
                            style: TextStyle(color: Colors.white),
                            controller: _chat,
                            cursorColor: Colors.white,

                            decoration: InputDecoration(
                              border: InputBorder.none,
                                hintText: "  Type here",

                                hintStyle: TextStyle(color:Colors.grey,fontSize: 16 * MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),
                                focusColor: Colors.black,
                              suffixIcon: InkWell(
                                onTap: (){
                                  messagesend(message:_chat.text);
                                },
                                child: Container(
                                  height: MediaQuery.of(context).size.height*0.13,
                                  width:  MediaQuery.of(context).size.width*0.0700,
                                    child: Image.asset("assets/images/Farrow.png",fit: BoxFit.fill,)
                                ),
                              )
                            ),
                          ),
                        ),
                      )
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.0200),

                    Container(
                      height: MediaQuery.of(context).size.height*0.45,
                      width:  MediaQuery.of(context).size.width*0.30,
                      child: FutureBuilder<List<Chat>>(
                          future: khc(),
                          builder: (context, snapshot) {
                            if (snapshot.hasError) print(snapshot.error);

                            return snapshot.hasData
                                ? ListView.builder(
                                    physics: BouncingScrollPhysics(),
                                    itemCount: snapshot.data!.length,
                                    itemBuilder: (context, index) {
                                      print(snapshot.data!.length);
                                      return
                                        InkWell(
                                          onTap: (){
                                            messagesend(message: snapshot.data![index].message);
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(bottom: 8.0),
                                            child: Container(

                                              height: MediaQuery.of(context).size.height*0.11,
                                            width:  MediaQuery.of(context).size.width*0.0,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/images/greenbutton.png"),
                                                    fit: BoxFit.fill)),
                                            child: Center(child: Text("${snapshot.data![index].message}",style: TextStyle(color:Colors.white,fontSize: 15* MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)),
                                    ),
                                          ),
                                        );
                                      // SizedBox(height: MediaQuery.of(context).size.height*0.0200),

                                    }
                                ):Center(child: Text("No message"),);
                        }
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
  Future<List<Chat>> khc() async{

    final response = await http.get(
      Uri.parse(ApiConst.baseurl+'chat'),
    );
    var jsond = json.decode(response.body)["data"];
    print('wwwwwwwwwwwwwwwwwwww');
    print(jsond);

    List<Chat> allround = [];
    for (var o in jsond)  {
      Chat al = Chat(
        o["id"],
        o["message"],
        o["status"],
      );

      allround.add(al);
    }
    return allround;
  }

}

class Chat{
  int id;
  String message;
  String? status;



  Chat(
      this.id,
      this.message,
      this.status,


      );

}
