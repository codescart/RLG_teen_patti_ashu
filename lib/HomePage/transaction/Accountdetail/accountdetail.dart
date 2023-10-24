import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ultimate_teen_patti/const.dart';
class account_details extends StatefulWidget {
  const account_details({Key? key}) : super(key: key);

  @override
  State<account_details> createState() => _account_detailsState();
}

class _account_detailsState extends State<account_details> {

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
                    SizedBox(width: MediaQuery.of(context).size.width*0.28,),
                    Padding(
                      padding:  EdgeInsets.only(top: 5.0),
                      child: Text("𝐀𝐜𝐜𝐨𝐮𝐧𝐭 𝐃𝐞𝐭𝐚𝐢𝐥𝐬",style: TextStyle(color: Color(0xff2c0000),fontSize: 24*MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width*0.18,),
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
                Container(
                  height: 200,
                  child: FutureBuilder<List<aoountdetail>>(
                      future: sahil(),
                      builder: (context, snapshot) {
                        if (snapshot.hasError) print(snapshot.error);

                        return snapshot.hasData
                            ?   ListView.builder(
                            physics: BouncingScrollPhysics(),
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context, index) {
                              print(snapshot.data!.length);

                              return Column(
                        children: [
                          SizedBox(height: MediaQuery.of(context).size.height*0.10,),
                          Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Bank Name : "+'${snapshot.data![index].bank_name}',style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.bold),),
                                  // Text("Bank of Baroda",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                                ],
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height*0.0250,),
                          Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Account Number : "+'${snapshot.data![index].account}',style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.bold),),
                                  // Text("4643142134343",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                                ],
                          ),
                        ],
                      );
                              }
                            ):Center(child: CircularProgressIndicator());
                    }
                  ),
                )
              ],
            ),
            ),
          ],

        )
    );
  }

  Future<List<aoountdetail>> sahil() async{
    final prefs1 = await SharedPreferences.getInstance();
    final useid=prefs1.getInt('user_id') ?? 0;
    final response = await http.get(
      Uri.parse('https://rlg.apponrent.co.in/public/api/account/details/$useid'),
    );
    var jsond = json.decode(response.body)["data"];
    print('wwwwwwwwwwwwwwwwwwww');
    print(jsond);

    List<aoountdetail> allround = [];
    for (var o in jsond)  {
      aoountdetail al = aoountdetail(
        o["id"],
        o["rusers_id"],
        o["account"],
        o["ifsc"],
        o["micr"],
        o["branch"],
        o["bank_name"],
        o["status"],
        o["upi"],
        o["pan"],
        o["aadhar"],
        o["created_at"],
        o["updated_at"],

      );

      allround.add(al);
    }
    return allround;
  }

}
class aoountdetail{
  int? id;
  String? rusers_id;
  String? account;
  String? ifsc;
  String? micr;
  String? branch;
  String? bank_name;
  String? status;
  String? upi;
  String? pan;
  String? aadhar;
  String? created_at;
  String? updated_at;


  aoountdetail(
      this.id,
      this.rusers_id,
      this.account,
      this.ifsc,
      this.micr,
      this.branch,
      this.bank_name,
      this.status,
      this.upi,
      this.pan,
      this.aadhar,
      this.created_at,
      this.updated_at,

      );

}
