import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ultimate_teen_patti/const.dart';
class PayinHistory extends StatefulWidget {
  const PayinHistory({Key? key}) : super(key: key);

  @override
  State<PayinHistory> createState() => _PayinHistoryState();
}

class _PayinHistoryState extends State<PayinHistory> {
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
                          "𝐏𝐚𝐲𝐈𝐧 𝐇𝐢𝐬𝐭𝐨𝐫𝐲",
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
                  SizedBox(height: MediaQuery.of(context).size.height*0.0400,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Type",style: TextStyle(color: Colors.amber,fontSize: 18,fontWeight: FontWeight.bold,),),
                      Text("Amount",style: TextStyle(color: Colors.amber,fontSize: 18,fontWeight: FontWeight.bold),),
                      Text("Discription",style: TextStyle(color: Colors.amber,fontSize: 18,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.0500,),
                  Container(
                    height: 150,
                    child: FutureBuilder<List<Wallethistory>>(
                        future: wallet_history(),
                        builder: (context, snapshot) {
                          if (snapshot.hasError) print(snapshot.error);

                          return snapshot.hasData
                              ?  ListView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: snapshot.data!.length,
                            itemBuilder: (BuildContext context, int index) {
                              return ListTile(
                                  title: Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(width: MediaQuery.of(context).size.width*0.10,),
                                          Text("Credited",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),
                                          SizedBox(width: MediaQuery.of(context).size.width*0.14,),
                                          Text("${snapshot.data![index].amount}",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),
                                          SizedBox(width: MediaQuery.of(context).size.width*0.15,),
                                          Text("Upi Pay In",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),)
                                        ],
                                      )
                                    ],
                                  ));
                            }):Center(child: Text("No data"),);
                      }
                    ),
                  ),
                ],
              ),

            ),
          ],
        ));
  }
  Future<List<Wallethistory>> wallet_history() async{
    final prefs1 = await SharedPreferences.getInstance();
    final useid=prefs1.getInt('user_id') ?? 0;


    final response = await http.get(
      Uri.parse('https://rlg.apponrent.co.in/api/payin_history.php?userid=$useid'),
    );
    var jsond = json.decode(response.body)["data"];
    print('wwwwwwwwwwwwwwwwwwww');
    print(jsond);

    List<Wallethistory> allround = [];
    for (var json in jsond)  {
      Wallethistory al = Wallethistory(
     json["id"],
      json["rusers_id"],
        json["upi_id"],
        json["coupan_code"],
        json["amount"],
        json["status"],
      json["created_at"],
    json["updated_at"],


      );

      allround.add(al);
    }
    return allround;
  }

}
class Wallethistory{
  int id;
  String rusers_id;
  String? upi_id;
  String? coupan_code;
  String? amount;
  String? status;
  String? created_at;
  String? updated_at;



  Wallethistory(
      this.id,
      this.rusers_id,
      this.upi_id,
      this.coupan_code,
      this.amount,
      this.status,
      this.created_at,
      this.updated_at,

      );

}
