import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ultimate_teen_patti/const.dart';
import 'package:http/http.dart' as http;
class Add_account extends StatefulWidget {
  const Add_account({Key? key}) : super(key: key);

  @override
  State<Add_account> createState() => _Add_accountState();
}

class _Add_accountState extends State<Add_account> {
  TextEditingController _upi = TextEditingController();
  TextEditingController _accountno = TextEditingController();
  TextEditingController _pan = TextEditingController();
  TextEditingController _age = TextEditingController();
  TextEditingController _ifsc = TextEditingController();
  TextEditingController _micr = TextEditingController();
  TextEditingController _bankname = TextEditingController();
  TextEditingController _branch = TextEditingController();
  TextEditingController _aadhar = TextEditingController();

  GlobalKey<FormState> _formkey = GlobalKey();
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
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.27,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            "𝐁𝐚𝐧𝐤 𝐃𝐞𝐭𝐚𝐢𝐥'𝐬",
                            style: TextStyle(
                                color: Color(0xff2c0000),
                                fontSize:
                                    23 * MediaQuery.textScaleFactorOf(context),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.25,
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
                                    image:
                                        AssetImage("assets/images/cross.png"),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.0850,
                    ),
                    Container(
                      height: 153,
                      width: 270,
                      child: ListView(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.11,
                            width: MediaQuery.of(context).size.width * 0.40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/regisbutton.png"),
                                  fit: BoxFit.fill),
                            ),
                            child: TextFormField(
                              controller: _upi,
                              cursorColor: Colors.white,
                              style: TextStyle(color: Colors.white),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  size: 27,
                                ),
                                border: InputBorder.none,
                                hintText: " UPI",
                                hintStyle: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 18 *
                                        MediaQuery.textScaleFactorOf(context),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.0350,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.11,
                            width: MediaQuery.of(context).size.width * 0.40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/regisbutton.png"),
                                  fit: BoxFit.fill),
                            ),
                            child: TextFormField(
                              controller: _accountno,
                              cursorColor: Colors.white,
                              style: TextStyle(color: Colors.white),
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.account_balance,
                                  color: Colors.white,
                                  size: 27,
                                ),
                                border: InputBorder.none,
                                hintText: " Account no.",
                                hintStyle: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 18 *
                                        MediaQuery.textScaleFactorOf(context),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.0350,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.11,
                            width: MediaQuery.of(context).size.width * 0.40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/regisbutton.png"),
                                  fit: BoxFit.fill),
                            ),
                            child: TextFormField(
                              controller: _pan,
                              cursorColor: Colors.white,
                              style: TextStyle(color: Colors.white),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  size: 27,
                                ),
                                border: InputBorder.none,
                                hintText: " Pan card",
                                hintStyle: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 18 *
                                        MediaQuery.textScaleFactorOf(context),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.0350,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.11,
                            width: MediaQuery.of(context).size.width * 0.40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/regisbutton.png"),
                                  fit: BoxFit.fill),
                            ),
                            child: TextFormField(
                              controller: _age,
                              cursorColor: Colors.white,
                              style: TextStyle(color: Colors.white),
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.view_agenda,
                                  color: Colors.white,
                                  size: 27,
                                ),
                                border: InputBorder.none,
                                hintText: " Age",
                                hintStyle: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 18 *
                                        MediaQuery.textScaleFactorOf(context),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.0350,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.11,
                            width: MediaQuery.of(context).size.width * 0.40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/regisbutton.png"),
                                  fit: BoxFit.fill),
                            ),
                            child: TextFormField(
                              controller: _ifsc,
                              cursorColor: Colors.white,
                              style: TextStyle(color: Colors.white),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.add_business_outlined,
                                  color: Colors.white,
                                  size: 27,
                                ),
                                border: InputBorder.none,
                                hintText: " IFSC",
                                hintStyle: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 18 *
                                        MediaQuery.textScaleFactorOf(context),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.0350,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.11,
                            width: MediaQuery.of(context).size.width * 0.40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/regisbutton.png"),
                                  fit: BoxFit.fill),
                            ),
                            child: TextFormField(
                              controller: _micr,
                              cursorColor: Colors.white,
                              style: TextStyle(color: Colors.white),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.person_pin,
                                  color: Colors.white,
                                  size: 27,
                                ),
                                border: InputBorder.none,
                                hintText: " MICR",
                                hintStyle: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 18 *
                                        MediaQuery.textScaleFactorOf(context),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.0350,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.11,
                            width: MediaQuery.of(context).size.width * 0.40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/regisbutton.png"),
                                  fit: BoxFit.fill),
                            ),
                            child: TextFormField(
                              controller: _bankname,
                              cursorColor: Colors.white,
                              style: TextStyle(color: Colors.white),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.account_balance,
                                  color: Colors.white,
                                  size: 27,
                                ),
                                border: InputBorder.none,
                                hintText: " Bank Name",
                                hintStyle: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 18 *
                                        MediaQuery.textScaleFactorOf(context),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.0350,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.11,
                            width: MediaQuery.of(context).size.width * 0.40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/regisbutton.png"),
                                  fit: BoxFit.fill),
                            ),
                            child: TextFormField(
                              controller: _branch,
                              cursorColor: Colors.white,
                              style: TextStyle(color: Colors.white),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.location_on,
                                  color: Colors.white,
                                  size: 27,
                                ),
                                border: InputBorder.none,
                                hintText: " Branch",
                                hintStyle: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 18 *
                                        MediaQuery.textScaleFactorOf(context),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.0350,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.11,
                            width: MediaQuery.of(context).size.width * 0.40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/regisbutton.png"),
                                  fit: BoxFit.fill),
                            ),
                            child: TextFormField(
                              controller: _aadhar,
                              cursorColor: Colors.white,
                              style: TextStyle(color: Colors.white),
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 27,
                                ),
                                border: InputBorder.none,
                                hintText: " Aadhar",
                                hintStyle: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 18 *
                                        MediaQuery.textScaleFactorOf(context),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.0450,
                    ),
                    InkWell(
                      onTap: (){
                        addaccount(_upi.text,_accountno.text,_pan.text,_age.text,_ifsc.text,_micr.text,_bankname.text,_branch.text,_aadhar.text,);
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.11,
                        width: MediaQuery.of(context).size.width * 0.17,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/loginred.png"),
                                fit: BoxFit.fill)),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: MediaQuery.of(context).viewInsets.left +
                                      15.0),
                              child: Text(
                                "Add Account",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16 *
                                        MediaQuery.textScaleFactorOf(context),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
  addaccount(String _upi,String _accountno,String _pan,String _age,String _ifsc,String _micr,String _bankname,String _branch,String _aadhar,)async{

    final prefs1 = await SharedPreferences.getInstance();
    final useid=prefs1.getInt('user_id') ?? 0;

    final res=await http.post(Uri.parse(ApiConst.baseurl+'account'),
     headers: <String, String>{
       'Content-Type': 'application/json; charset=UTF-8',
     },
     body: jsonEncode(<String, String>{
       "rusers_id":"$useid",
       "account":_accountno,
       "ifsc":_ifsc,
       "micr":_micr,
       "branch":_branch,
       "bank_name":_bankname,
       "status":"2",
       "upi":_upi,
       "pan":_pan,
       "aadhar":_aadhar

     }),
   );
final data=jsonDecode(res.body);
   print("ggggggg");
print(data);
if(data['success']=='200'){
  Fluttertoast.showToast(
      msg: data['message'],
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 16.0);
  Navigator.pop(context);
}
  }
}
