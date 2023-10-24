import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ultimate_teen_patti/HomePage/homePage.dart';
import 'package:ultimate_teen_patti/const.dart';
import 'package:ultimate_teen_patti/registrationscreen.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';


class registration_page extends StatefulWidget {
  const registration_page({Key? key}) : super(key: key);

  @override
  State<registration_page> createState() => _registration_pageState();
}

class _registration_pageState extends State<registration_page> {
  bool _obscured = false;
  bool _passwordVisible = true;

  TextEditingController _name = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _pin = TextEditingController();
  TextEditingController _confirmpin = TextEditingController();


  GlobalKey<FormState>_formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/backgroundhome.jpg"),
                fit: BoxFit.cover),
          ),
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.13,
                  width: MediaQuery.of(context).size.width * 0.40,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/enterpass1.png"),
                        fit: BoxFit.fill),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(left:MediaQuery.of(context).viewInsets.left+70.0,top:MediaQuery.of(context).viewInsets.top+16.0),
                    child: Text(
                      "User Registration",
                      style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18 * MediaQuery.textScaleFactorOf(context),
                      fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.0500,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.11,
                  width: MediaQuery.of(context).size.width * 0.40,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/regisbutton.png"),
                        fit: BoxFit.fill),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(left:MediaQuery.of(context).viewInsets.left+18),
                    child: TextFormField(
                      controller: _name,
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "  Name",
                          hintStyle: TextStyle(color: Colors.white70),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.0170,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.11,
                  width: MediaQuery.of(context).size.width * 0.40,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/regisbutton.png"),
                        fit: BoxFit.fill),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(left:18.0),
                    child: TextFormField(
                      controller: _phone,
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      decoration: InputDecoration(
                        counterText: "",
                        border: InputBorder.none,
                        hintText: "  Phone number ",
                        hintStyle: TextStyle(color: Colors.white70),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.0170,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.11,
                  width: MediaQuery.of(context).size.width * 0.40,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/regisbutton.png"),
                        fit: BoxFit.fill),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left+18.0),
                    child: TextFormField(
                      controller: _pin,
                      validator: (val) {
                        if (val!.isEmpty) return 'enter pin';
                        return null;
                      },
                      obscureText: !_obscured,
                      maxLength: 4,
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        counterText: "",
                        border: InputBorder.none,
                        hintText: "  Pin ",
                        hintStyle: TextStyle(color: Colors.white70),
                        suffixIcon: IconButton(
                          icon: Icon(
                            // Based on passwordVisible state choose the icon
                            _obscured
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            // Update the state i.e. toogle the state of passwordVisible variable
                            setState(() {
                              _obscured = !_obscured;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.0170,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.11,
                  width: MediaQuery.of(context).size.width * 0.40,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/regisbutton.png"),
                        fit: BoxFit.fill),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(left:MediaQuery.of(context).viewInsets.left+18.0),
                    child: TextFormField(
                      controller: _confirmpin,
                      validator: (val) {
                        if (val!.isEmpty) return 'enter confirm Pin';
                        if (val != _confirmpin.text) return 'Not Match';
                        return null;
                      },
                      obscureText: !_passwordVisible,
                      maxLength: 4,
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        counterText: "",
                        border: InputBorder.none,
                        hintText: "  Confirm pin ",
                        hintStyle: TextStyle(color: Colors.white70),
                        suffixIcon: IconButton(
                          icon: Icon(
                            // Based on passwordVisible state choose the icon
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            // Update the state i.e. toogle the state of passwordVisible variable
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.0450,),
                InkWell(
                  onTap: (){
                    register(_name.text,_phone.text, _pin.text,_confirmpin.text);
                    },
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.11,
                    width: MediaQuery.of(context).size.width*0.17,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/images/giftgreenbutton.png"),fit: BoxFit.fill)
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left:MediaQuery.of(context).viewInsets.left + 30.0),
                          child: Text("Register",style: TextStyle(color: Colors.white,fontSize:17*MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.0130,),
                Container(
                  height: MediaQuery.of(context).size.height * 0.0600,
                  width: MediaQuery.of(context).size.width * 0.38,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/registerhere.png"),
                          fit: BoxFit.fill)),
                  child: Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left:MediaQuery.of(context).viewInsets.left + 23.0),
                        child: Text("Already have an account? ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                13 * MediaQuery.textScaleFactorOf(context),
                                fontWeight: FontWeight.bold)),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => registration()));
                          },
                          child: Text("Login here",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline))),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  register(String name,String phone,String pin,String confirmpin)async {
    if(pin==confirmpin){
      final response = await http.post(
        Uri.parse(
            ApiConst.baseurl+"register"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          "name":name,
          "mobile":phone,
          "pin":confirmpin
        }),
      );
      final data = jsonDecode(response.body);
      final dada = jsonDecode(response.body)['data'];
      print(data);
      if (data['success'] == "200") {
        final user_id = dada['id'] ;


        final prefs1 = await SharedPreferences.getInstance();
        prefs1.setInt('user_id', user_id);
        print(user_id);
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Home_Page()));

        // final otp = dada['otp'];
        // final status = dada['status'];
        // print(otp);
        // print('qqqqqqqqqqqqqqqq');
        //
        // final user_id = data['data']['id'] ;
        //
        //
        // final prefs1 = await SharedPreferences.getInstance();
        // prefs1.setString('user_id', user_id);
        // print(user_id);
        // print('wwwwwwwwwwww');

        Fluttertoast.showToast(
            msg: data['message'],
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 16.0);
        print("Register SucessFully");
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
    }else{
      Fluttertoast.showToast(
          msg: "Pin Not Match",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0);
    }

  }

}
