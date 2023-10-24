import 'package:flutter/material.dart';
import 'package:ultimate_teen_patti/loginscreen.dart';
import 'package:ultimate_teen_patti/registerpage.dart';



class registration extends StatefulWidget {
  const registration({Key? key}) : super(key: key);

  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
  GlobalKey<FormState> _formkey = GlobalKey();
  TextEditingController countrycode = TextEditingController();
  TextEditingController phonenumber = TextEditingController();
  var phone = "";
  @override
  void initState() {
    // TODO: implement initState
    countrycode.text = "+91";
    super.initState();
  }

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: AssetImage("assets/images/rlg.jpeg"),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.0800,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.19,
                width: MediaQuery.of(context).size.width * 0.37,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/fblogin.png"),
                        fit: BoxFit.fill)),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).viewInsets.left + 25.0,
                        top: MediaQuery.of(context).viewInsets.top + 19),
                    child: TextFormField(
                      controller: phonenumber,
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white,fontSize: 19),
                      onChanged: (value) {
                        phone = value;
                      },
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a Phone Number \n  ';
                        } else if (value.length != 10) {
                          return 'Please Enter 10 Digit Number \n ';
                        }
                        return null;
                      },

                      decoration: InputDecoration(
                        counterText: "",
                        prefixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              '+91',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19*
                                      MediaQuery.textScaleFactorOf(context),
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        prefixStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize:
                                17 * MediaQuery.textScaleFactorOf(context)),
                        border: InputBorder.none,
                        hintText: "  Phone Number",
                        hintStyle: TextStyle(color: Colors.white,
                            fontSize: 17* MediaQuery.textScaleFactorOf(context)),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.0450,
                width: MediaQuery.of(context).size.width * 0.24,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/redreward.png"),
                      fit: BoxFit.fill),
                ),
                child: Center(
                    child: Text(
                  "Get 1,00,000 chips reward",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 11 * MediaQuery.textScaleFactorOf(context),
                      fontWeight: FontWeight.bold),
                )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.0600,
              ),

              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Pin(mobile:phone)));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.11,
                  width: MediaQuery.of(context).size.width * 0.15,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/loginred.png"),
                          fit: BoxFit.fill)),
                  child: Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left:MediaQuery.of(context).viewInsets.left + 29.0),
                        child: Text(
                          "Next",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  18 * MediaQuery.textScaleFactorOf(context),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white,
                        size: 20,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.0150,
              ),
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
                      child: Text("Don't have an account? ",
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
                                  builder: (context) => registration_page()));
                        },
                        child: Text("Register here",
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
    );
  }

}
