import 'package:flutter/material.dart';
import 'package:ultimate_teen_patti/HomePage/homePage.dart';
import 'package:ultimate_teen_patti/HomePage/transaction/Accountdetail/accountdetail.dart';
import 'package:ultimate_teen_patti/HomePage/transaction/addaccount/addaccount.dart';
import 'package:ultimate_teen_patti/HomePage/transaction/payInhistory/payInhistory.dart';
import 'package:ultimate_teen_patti/HomePage/transaction/wallethistory/wallethistory.dart';
import 'package:ultimate_teen_patti/HomePage/transaction/withdrawal/withdrawal.dart';
import 'package:ultimate_teen_patti/HomePage/transaction/withdrawhistory/withdrawhistory.dart';
import 'package:ultimate_teen_patti/transaction//Accountdetail/accountdetail.dart';
import 'package:ultimate_teen_patti/transaction/addaccount/addaccount.dart';
import 'package:ultimate_teen_patti/transaction/payInhistory/payInhistory.dart';
import 'package:ultimate_teen_patti/transaction/wallethistory/wallethistory.dart';
import 'package:ultimate_teen_patti/transaction/withdrawal/withdrawal.dart';
import 'package:ultimate_teen_patti/transaction/withdrawhistory/withdrawhistory.dart';

class transaction extends StatefulWidget {
  const transaction({Key? key}) : super(key: key);

  @override
  State<transaction> createState() => _transactionState();
}

class _transactionState extends State<transaction> {
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
              height: MediaQuery.of(context).size.height*0.70,
              width:  MediaQuery.of(context).size.width*0.80,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/backtable.png"),
                      fit: BoxFit.fill)),
              child: Column(

                children: [
                  Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width*0.25,),
                      Text("𝐓𝐫𝐚𝐧𝐬𝐚𝐜𝐭𝐢𝐨𝐧 𝐇𝐢𝐬𝐭𝐨𝐫𝐲",style: TextStyle(color: Color(0xff4f0502),fontSize: 23*MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.0700,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) => withdrawal());
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.22,
                          width: MediaQuery.of(context).size.width * 0.18,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/border.png"),
                                fit: BoxFit.fill),
                          ),
                          child: Center(
                              child: Text(
                                "𝐖𝐢𝐭𝐡𝐝𝐫𝐚𝐰𝐚𝐥",
                                style: TextStyle(
                                    color: Colors.amber,
                                    fontSize:
                                    19 * MediaQuery.textScaleFactorOf(context),
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  account_details());
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.22,
                          width: MediaQuery.of(context).size.width * 0.18,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/border.png"),
                                fit: BoxFit.fill),
                          ),
                          child: Center(
                              child: Text(
                                "𝐀𝐜𝐜𝐨𝐮𝐧𝐭\n 𝐃𝐞𝐭𝐚𝐢𝐥𝐬",
                                style: TextStyle(
                                    color: Colors.amber,
                                    fontSize:
                                    19 * MediaQuery.textScaleFactorOf(context),
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          showDialog(context: context, builder: (BuildContext context)=>wallet_history());
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.22,
                          width: MediaQuery.of(context).size.width * 0.18,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                AssetImage("assets/images/border.png"),
                                fit: BoxFit.fill),
                          ),
                          child: Center(
                              child: Text(
                                "𝐖𝐚𝐥𝐥𝐞𝐭\n𝐇𝐢𝐬𝐭𝐨𝐫𝐲",
                                style: TextStyle(
                                    color: Colors.amber,
                                    fontSize:
                                    19 * MediaQuery.textScaleFactorOf(context),
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.0400,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: (){
                          showDialog(context: context, builder: (BuildContext context)=>PayinHistory());
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.22,
                          width: MediaQuery.of(context).size.width * 0.18,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                AssetImage("assets/images/border.png"),
                                fit: BoxFit.fill),
                          ),
                          child: Center(
                              child: Text(
                                " 𝐏𝐚𝐲𝐈𝐧\n𝐇𝐢𝐬𝐭𝐨𝐫𝐲",
                                style: TextStyle(
                                    color: Colors.amber,
                                    fontSize:
                                    19 * MediaQuery.textScaleFactorOf(context),
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          showDialog(context: context, builder: (BuildContext context)=>Withdraw_history());
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.22,
                          width: MediaQuery.of(context).size.width * 0.18,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                AssetImage("assets/images/border.png"),
                                fit: BoxFit.fill),
                          ),
                          child: Center(
                              child: Text(
                                "𝐖𝐢𝐭𝐡𝐝𝐫𝐚𝐰\n  𝐇𝐢𝐬𝐭𝐨𝐫𝐲",
                                style: TextStyle(
                                    color: Colors.amber,
                                    fontSize:
                                    19 * MediaQuery.textScaleFactorOf(context),
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          showDialog(context: context, builder: (BuildContext context)=>Add_account());
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.22,
                          width: MediaQuery.of(context).size.width * 0.18,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                AssetImage("assets/images/border.png"),
                                fit: BoxFit.fill),
                          ),
                          child: Center(
                              child: Text(
                                "  𝐀𝐝𝐝\n𝐀𝐜𝐜𝐨𝐮𝐧𝐭",
                                style: TextStyle(
                                    color: Colors.amber,
                                    fontSize:
                                    19 * MediaQuery.textScaleFactorOf(context),
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.width * 0.33,
              left: MediaQuery.of(context).size.width * 0.75,
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Home_Page()));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.0900,
                  width: MediaQuery.of(context).size.width * 0.0600,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/cross.png"),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
            )

          ],
        )
    );
  }
}
