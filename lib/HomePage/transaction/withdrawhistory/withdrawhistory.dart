import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ultimate_teen_patti/const.dart';
import 'package:http/http.dart' as http;
class Withdraw_history extends StatefulWidget {
  const Withdraw_history({Key? key}) : super(key: key);

  @override
  State<Withdraw_history> createState() => _Withdraw_historyState();
}

class _Withdraw_historyState extends State<Withdraw_history> {
  @override
  void initState() {
    khc();
    // TODO: implement initState
    super.initState();
  }


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
              height:  double.infinity,
              width:  MediaQuery.of(context).size.width*0.77,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/backtable.png"),
                      fit: BoxFit.fill)),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width*0.23,),
                      Padding(
                        padding:  EdgeInsets.only(top: 6.0),
                        child: Text("𝐖𝐢𝐭𝐡𝐝𝐫𝐚𝐰 𝐇𝐢𝐬𝐭𝐨𝐫𝐲",style: TextStyle(color: Color(0xff2c0000),fontSize: 23*MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width*0.22,),
                      InkWell(onTap: (){Navigator.pop(context);},
                        child: Container(
                          height:  MediaQuery.of(context).size.height*0.0950,
                          width:  MediaQuery.of(context).size.width*0.0600,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/images/cross.png"),fit: BoxFit.fill)
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.0600,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("UPI ID",style: TextStyle(color: Colors.amber,fontSize: 20,fontWeight: FontWeight.bold),),
                      Text("Account No.",style: TextStyle(color: Colors.amber,fontSize: 20,fontWeight: FontWeight.bold),),
                      Text("Date & Time",style: TextStyle(color: Colors.amber,fontSize: 20,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.0200,),
                  Container(
                    height: MediaQuery.of(context).size.height*0.50,
                    child: FutureBuilder<List<WithdrawList>>(
                        future: khc(),
                        builder: (context, snapshot) {
                          if (snapshot.hasError) print(snapshot.error);

                          return snapshot.hasData
                              ? ListView.builder(
                              physics: BouncingScrollPhysics(),
                              itemCount: snapshot.data!.length,
                              itemBuilder: (context, index) {
                                print(snapshot.data!.length);
                                print('${snapshot.data![index].upiid}');
                            return Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('${snapshot.data![index].amount}',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                                    Text('${snapshot.data![index].accountno}',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                                    Text('${snapshot.data![index].updated_at}',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                                  ],
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height*0.0200,),
                              ],
                            );
                          }
                        ):Center(child: Text('No Data'),);
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
  Future<List<WithdrawList>> khc() async{
    final prefs1 = await SharedPreferences.getInstance();
    final useid=prefs1.getInt('user_id') ?? 0;

    final response = await http.get(
      Uri.parse('https://rlg.apponrent.co.in/api/withdrawal_history.php?userid=$useid'),
    );
    var jsond = json.decode(response.body)["data"];
    print('wwwwwwwwwwwwwwwwwwww');
    print(jsond);

    List<WithdrawList> allround = [];
    for (var o in jsond)  {
      WithdrawList al = WithdrawList(
        o["id"],
        o["rusers_id"],
        o["amount"],
        o["description"],
        o["upiid"],
        o["account_id"],
        o["wstatus"],
        o["created_at"],
        o["updated_at"],
        o["accountno"],


      );

      allround.add(al);
    }
    return allround;
  }
}
class WithdrawList{
  int id;
  String rusers_id;
  String? amount;
  String? description;
  String? upiid;
  String? account_id;
  String? wstatus;
  String? created_at;
  String? updated_at;
  String? accountno;


  WithdrawList(
      this.id,
      this.rusers_id,
      this.amount,
      this.description,
      this.upiid,
      this.account_id,
      this.wstatus,
      this.created_at,
      this.updated_at,
      this.accountno,

      );

}