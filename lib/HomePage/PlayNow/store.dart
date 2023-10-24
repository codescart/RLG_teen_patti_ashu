import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Store extends StatefulWidget {
  const Store({Key? key}) : super(key: key);

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {

  coinpurchase(String amount, int type)async{
    final userid='';
    final resp= await http.get(Uri.parse('https://rlg.apponrent.co.in/api/coinpurchase.php?userid=$userid&counponcode=123&amount=$amount&type=$type'));
    final data=jsonDecode(resp.body);
    // setState(() {
    //   chaal= data['chal_amount'];
    // });
    print('anirudh');

    print(data);

  }

bool hammerset=true;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Container(
        height:  MediaQuery.of(context).size.height*0.85,
        width:  MediaQuery.of(context).size.width*0.78,
        decoration: BoxDecoration(

            image: DecorationImage(image: AssetImage("assets/images/backtable.png",),fit: BoxFit.fill)
        ),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.12,
            ),
            Container(
              height:  MediaQuery.of(context).size.height*0.60,
              width:  MediaQuery.of(context).size.width*0.78,
              child: DefaultTabController(
                  length: 2,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      Container(
                          height: 50.0,
                          child: TabBar(
                            //unselectedLabelColor: Colors.deepOrangeAccent,
                            indicatorSize: TabBarIndicatorSize.label,
                            indicatorColor: Colors.transparent,
                            indicator: BoxDecoration(
                                borderRadius: BorderRadius.zero,
                                color: Colors.transparent
                            ),
                            tabs: [
                              Tab(
                                child:
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text('Coin',
                                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900)

                                      ,selectionColor: Colors.white,),
                                    Container(
                                      width: 70,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage("assets/images/roulette.png"),fit: BoxFit.fill
                                          )
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Tab(
                                child:   Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text('Hammer',
                                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900)
                                      ,selectionColor: Colors.white,),
                                    Container(
                                      width: 70,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage("assets/images/hammer.png"),fit: BoxFit.fill
                                          )
                                      ),
                                    ),
                                  ],
                                ),

                              ),
                            ],
                          )
                      ),
                      Container(
                        height:  MediaQuery.of(context).size.height*0.45,
                        child: TabBarView(
                          children: [
                            Container(
                              height:  MediaQuery.of(context).size.height*0.40,
                              width:  MediaQuery.of(context).size.width*0.70,
                              child: FutureBuilder<List<coin>>(
                                  future: coins(),
                                  builder: (context, snapshot) {
                                    if (snapshot.hasError) print(snapshot.error);

                                    return snapshot.hasData
                                        ? GridView.builder(
                                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                                        maxCrossAxisExtent: 200,
                                        mainAxisSpacing: 20,
                                        crossAxisSpacing:20,
                                        childAspectRatio: 5/4,
                                      ),
                                      itemCount: snapshot.data!.length,
                                      itemBuilder: (BuildContext context, int index){
                                        return  Container(
                                          height:  MediaQuery.of(context).size.height*0.0400,
                                          width:  MediaQuery.of(context).size.width*0.0600,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(image:AssetImage("assets/images/buybutton.png"),fit: BoxFit.fill)
                                          ),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 38.0,left: MediaQuery.of(context).viewInsets.left + 20),
                                                    child: Image.asset("assets/images/roulette.png",fit: BoxFit.fill,
                                                      height:  MediaQuery.of(context).size.height*0.0700,
                                                      width:  MediaQuery.of(context).size.width*0.0400,),
                                                  ),
                                                  Padding(
                                                    padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 37.0,left: MediaQuery.of(context).viewInsets.left + 5),
                                                    child: Text('${snapshot.data![index].chips}',style: TextStyle(color: Colors.white,fontSize: 16),),
                                                  )
                                                ],
                                              ),
                                              Padding(
                                                padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 75.0),
                                                child: Row(
                                                  children: [
                                                    Image.asset("assets/images/starSP.png",fit:BoxFit.fill,
                                                      height:  MediaQuery.of(context).size.height*0.0600,
                                                      width:  MediaQuery.of(context).size.width*0.0400,),
                                                    // Text("+50 ",style: TextStyle(color: Colors.amber,fontSize: 16),),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: MediaQuery.of(context).size.height*0.1,),

                                              Text("     Buy for Rs.${snapshot.data![index].rs}",style: TextStyle(color: Color(0xff254200),fontSize: 18*MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)
                                            ],
                                          ),
                                        );
                                      }
                                  ):CircularProgressIndicator();
                                }
                              ),
                            ),
                            Container(
                              height:  MediaQuery.of(context).size.height*0.40,
                              width:  MediaQuery.of(context).size.width*0.70,
                              child: FutureBuilder<List<coin>>(
                                  future: coins(),
                                  builder: (context, snapshot) {
                                    if (snapshot.hasError) print(snapshot.error);

                                    return snapshot.hasData
                                        ?   GridView.builder(
                                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                                        maxCrossAxisExtent: 200,
                                        mainAxisSpacing: 20,
                                        crossAxisSpacing:20,
                                        childAspectRatio: 5/4,
                                      ),
                                      itemCount: snapshot.data!.length,
                                      itemBuilder: (BuildContext context, int index){
                                        return  Container(
                                          height:  MediaQuery.of(context).size.height*0.0400,
                                          width:  MediaQuery.of(context).size.width*0.0600,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(image:AssetImage("assets/images/buybutton.png"),fit: BoxFit.fill)
                                          ),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 38.0,left: MediaQuery.of(context).viewInsets.left + 20),
                                                    child: Image.asset("assets/images/hammer.png",fit: BoxFit.fill,
                                                      height:  MediaQuery.of(context).size.height*0.0700,
                                                      width:  MediaQuery.of(context).size.width*0.0400,),
                                                  ),
                                                  Padding(
                                                    padding:  EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 37.0,left: MediaQuery.of(context).viewInsets.left + 5),
                                                    child: Text('${snapshot.data![index].chips}',style: TextStyle(color: Colors.white,fontSize: 16),),
                                                  )
                                                ],
                                              ),
                                              Padding(
                                                padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 75.0),
                                                child: Row(
                                                  children: [
                                                    Image.asset("assets/images/starSP.png",fit:BoxFit.fill,
                                                      height:  MediaQuery.of(context).size.height*0.0600,
                                                      width:  MediaQuery.of(context).size.width*0.0400,),
                                                    // Text("+50 ",style: TextStyle(color: Colors.amber,fontSize: 16),),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: MediaQuery.of(context).size.height*0.1,),

                                              Text("     Buy for Rs.${snapshot.data![index].rs}",style: TextStyle(color: Color(0xff254200),fontSize: 18*MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)
                                            ],
                                          ),
                                        );
                                      }
                                  ):CircularProgressIndicator();
                                }
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
              ),
            ),
          ],
        ),

      ),
    );
  }


  Future<List<coin>> coins() async{
// code= 1
print(hammerset);
    // final prefs = await SharedPreferences.getInstance();
    // final userid=prefs.getString("userId");


final url= hammerset==true?'https://apponrent.co.in/rlg/api/coinpackege.php':'https://apponrent.co.in/rlg/api/hammerpackege.php';

    final response = await http.get(
      Uri.parse(url),
    );
    var jsond = json.decode(response.body)["data"];
    print('wwwwwwwwwwwwwwwwwwww');
    print(jsond);

    List<coin> allround = [];
    for (var o in jsond)  {
      coin al = coin(
        o["id"],
        o["rs"],
        o["chips"]


      );

      allround.add(al);
    }
    return allround;
  }


}


class coin {
  String? id;
  String? rs;
  String? chips;



  coin(
      this.id,
      this.rs,
      this.chips,

      );
}


class hammer {
  String? id;
  String? chips;
  String? punch;



  hammer(
      this.id,
      this.chips,
      this.punch,

      );
}