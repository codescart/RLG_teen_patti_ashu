import 'dart:convert';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:ultimate_teen_patti/HomePage/homePage.dart';
import 'package:ultimate_teen_patti/const.dart';

class Pin extends StatefulWidget {
  final String mobile;
   Pin({Key? key, required this.mobile}) : super(key: key);

  @override
  State<Pin> createState() => _PinState();
}

class _PinState extends State<Pin> {
  TextEditingController pin = TextEditingController();
  var phone = "";
  @override
  void initState() {
    // TODO: implement initState
    // countrycode.text = "+91";
    super.initState();
  }

  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: MediaQuery.of(context).size.width * 0.0650,
      height: MediaQuery.of(context).size.height * 0.0950,
      textStyle: TextStyle(
          fontSize: 19,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(7),
      ),
    );
    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(10),
    );
    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    return Scaffold(
      body: SingleChildScrollView (
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/backgroundhome.jpg"),
                fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: AssetImage("assets/images/rlg.jpeg"),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.0350,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.13,
                width: MediaQuery.of(context).size.width * 0.30,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/enterpass1.png"),
                        fit: BoxFit.fill)),
                child: Padding(
                  padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left +70.0,top: MediaQuery.of(context).viewInsets.top +18),
                  child: Text("Enter Pin",style: TextStyle(color:Colors.amber,fontSize: 17*MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.0600,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.13,
                width: MediaQuery.of(context).size.width * 0.34,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/pinback.png"),
                        fit: BoxFit.fill)),
                child: Pinput(
                  length: 4,
                  controller: pin,
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: focusedPinTheme,
                  submittedPinTheme: submittedPinTheme,
                  showCursor: true,

                  onChanged: (value) {

                  },
                ),
              ),
              // Padding(
              //   padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left+105),
              //   child: Container(
              //     height: MediaQuery.of(context).size.height * 0.0650,
              //     width: MediaQuery.of(context).size.width * 0.17,
              //     decoration: BoxDecoration(
              //         image: DecorationImage(
              //             image: AssetImage("assets/images/forgetback.png"),
              //             fit: BoxFit.fill)),
              //     child: Center(child: Text(" Forget PIN?",style: TextStyle(color: Colors.amber,))),
              //   ),
              // ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.0400,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Home_Page()));
                },
                child: InkWell(

                  onTap: (){
                    loginapi(pin.text);
                    },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.12,
                    width: MediaQuery.of(context).size.width * 0.18,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/loginred.png"),
                            fit: BoxFit.fill)),
                    child: Center(
                        child: Text(
                      "Submit",
                      style: TextStyle(
                          color: Colors.amber,
                          fontWeight: FontWeight.bold,
                          fontSize: 16*MediaQuery.textScaleFactorOf(context)),
                    )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  loginapi(String _login, )async {
    print('radhe');
    print(widget.mobile);
    print(_login);
    final response = await http.post(
      Uri.parse(
          ApiConst.baseurl+"login"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{

        "mobile":widget.mobile,
        "pin":_login

      }),
    );
    final data = jsonDecode(response.body);
    final dada = jsonDecode(response.body)['data'];
    print(data);
    if (data['success'] == "200" ) {


print('logons');
      final user_id = dada['id'] ;
print(user_id);

      final prefs1 = await SharedPreferences.getInstance();
      prefs1.setInt('user_id', user_id);
      print(user_id);
      print('wwwwwwwwwwww');

      Navigator.push(context, MaterialPageRoute(builder: (context)=>Home_Page()));

      Fluttertoast.showToast(
          msg: data['message'],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0);
      print(" Login SucessFully");

      // Navigator.push(context,
      //     MaterialPageRoute(builder: (context) =>
      //         OTPScreens(phone: _login, otp:otp,
      //             status:status, user_id:user_id)));
    } else {
      // final otp = dada['otp'];
      // final status = dada['status'];
      // print(otp);
      // print('qqqqqqqqqqqqqqqq');

      final user_id = '' ;
      Fluttertoast.showToast(
          msg: data['message'],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      // Navigator.push(context,
      //     MaterialPageRoute(builder: (context) =>
      //         Registration()));
      // Navigator.push(context,
      //     MaterialPageRoute(builder: (context) =>
      //         OTPScreens(phone: _login, otp:otp,
      //             status:status, user_id:user_id)));

    }
  }

}
