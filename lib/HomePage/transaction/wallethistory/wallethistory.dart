import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ultimate_teen_patti/const.dart';

class wallet_history extends StatefulWidget {
  const wallet_history({Key? key}) : super(key: key);

  @override
  State<wallet_history> createState() => _wallet_historyState();
}

class _wallet_historyState extends State<wallet_history> {

  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: double.infinity,
              width: MediaQuery.of(context).size.width * 0.77,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/backtable.png"),
                      fit: BoxFit.fill)),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.29,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 6.0),
                        child: Text(
                          "𝐖𝐚𝐥𝐥𝐞𝐭 𝐇𝐢𝐬𝐭𝐨𝐫𝐲",
                          style: TextStyle(
                              color: Color(0xff2c0000),
                              fontSize:
                                  23 * MediaQuery.textScaleFactorOf(context),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.21,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.0950,
                          width: MediaQuery.of(context).size.width * 0.0600,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/cross.png"),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.0500,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(),
                      Text("Total coin",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                      SizedBox(width: MediaQuery.of(context).size.width*0.12,),
                      Text("About",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                      SizedBox(width: MediaQuery.of(context).size.width*0.13,),
                      Text("Date & Time",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),

                    ],
                  ),
                  Container(
                    height: 200,
                    child: FutureBuilder<List<Wallethistory>>(
                        future: wallet_history(),
                        builder: (context, snapshot) {
                          if (snapshot.hasError) print(snapshot.error);

                          return snapshot.hasData
                              ? ListView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: snapshot.data?.length,
                            itemBuilder: (BuildContext context, int i) {
                              return Container(
                                height: 40,
                                child: ListTile(
                                    leading: const Icon(Icons.currency_rupee,color: Colors.white,),

                                    title:Column(
                                      children: [

                                        SizedBox(height: MediaQuery.of(context).size.height*0.0200,),
                                        Row(
                                          children: [
                                            Text("${snapshot.data![i].amount}",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                                            SizedBox(width: MediaQuery.of(context).size.width*0.13,),
                                            Text("${snapshot.data![i].description}",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                                            SizedBox(width: MediaQuery.of(context).size.width*0.0450,),
                                            Text("${snapshot.data![i].created_at}",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                                          ],
                                        ),
                                        Container(
                                            height:2,
                                            width:500,
                                            child: Divider(color: Colors.white,))
                                      ],
                                    )),
                              );
                            }):Center(child: Text("no data"),);
                      }
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
  Future<List<Wallethistory>> wallet_history() async{
    final prefs1 = await SharedPreferences.getInstance();
    final useid=prefs1.getInt('user_id') ?? 0;
    print(ApiConst.baseurl+'Wallet/history/$useid');

    final response = await http.get(
      Uri.parse(ApiConst.baseurl+'Wallet/history/$useid'),
    );
    var jsond = json.decode(response.body)["data"];
    print('wwwwwwwwwwwwwwwwwwww');
    print(jsond);

    List<Wallethistory> allround = [];
    for (var o in jsond)  {
      Wallethistory al = Wallethistory(
        o["id"],
        o["rusers_id"],
        o["type"],
        o["amount"],
        o["description"],
        o["status"],
        o["created_at"],
        o["updated_at"],
      );
      allround.add(al);
    }
    return allround;
  }
}
class Wallethistory{
  int id;
  String rusers_id;
  String? type;
  String? amount;
  String? description;
  String? status;
  String? created_at;
  String? updated_at;



  Wallethistory(
      this.id,
      this.rusers_id,
      this.type,
      this.amount,
      this.description,
      this.status,
      this.created_at,
      this.updated_at,
      );
}