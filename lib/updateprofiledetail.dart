import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart'as http;
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Update_profile extends StatefulWidget {
  const Update_profile({Key? key}) : super(key: key);

  @override
  State<Update_profile> createState() => _Update_profileState();
}

TextEditingController name = TextEditingController();

class _Update_profileState extends State<Update_profile> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      alignment: Alignment.topRight,
      shape: RoundedRectangleBorder(),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
              height: double.infinity,
              width: MediaQuery.of(context).size.width * 0.34,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                          AssetImage("assets/images/profiledetailtable1.png"),
                      fit: BoxFit.fill)),
              child: Column(
                children: [
                  Text(
                    "Edit your name",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16 * MediaQuery.textScaleFactorOf(context)),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.10,
                    width: MediaQuery.of(context).size.width * 0.30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/browntxtfield.png"),
                          fit: BoxFit.fill),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).viewInsets.left + 10),
                      child: TextFormField(
                        controller: name,
                        cursorColor: Colors.white,
                        style: TextStyle(color: Colors.white),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "  Guest_63",
                            hintStyle: TextStyle(
                                color: Colors.amber,
                                fontWeight: FontWeight.bold),
                            suffixIcon: Icon(
                              Icons.edit_rounded,
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height*0.200,),
                  Text(
                    "Edit Profile Picture",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16 * MediaQuery.textScaleFactorOf(context)),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.0500,),
                  InkWell(
                    onTap: _choose,
                    child: Center(
                      child: Stack(
                        children: [
                          file != null
                              ? CircleAvatar(
                            backgroundImage: FileImage(file!),
                            radius: 50,
                          ) : CircleAvatar(
                            backgroundImage: NetworkImage(
                             // widget.img.toString(),
                              ''
                            ),
                            radius: 50,
                          ),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child: CircleAvatar(
                                backgroundColor: Colors.redAccent,
                                radius: 15,
                                child: Icon(Icons.camera_alt_outlined),
                              )),
                        ],
                      ),
                    ),
                  ),
              // InkWell(
              //   onTap: _choose,
              //   child: Stack(
              //     children: [
              //       Container(
              //         height: MediaQuery.of(context).size.height * 0.18,
              //         width: MediaQuery.of(context).size.width * 0.11,
              //         decoration: BoxDecoration(
              //             image:
              //             file != null?
              //             DecorationImage(
              //                 image: AssetImage("assets/images/person1.png"),
              //                 fit: BoxFit.fill):
              //             DecorationImage(
              //                 image: NetworkImage("$FileImage(file!)"),
              //                 fit: BoxFit.fill),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.0500,),
                  InkWell(
                    onTap: (){
                      Updateprofile(
                        name.text
                      );
                      },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.10,
                      width: MediaQuery.of(context).size.width * 0.15,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                              AssetImage("assets/images/greenredeem.png"),
                              fit: BoxFit.fill)
                      ),
                      child: Center(child: Text("Save",style: TextStyle(color: Colors.white,fontSize: 19*MediaQuery.textScaleFactorOf(context),fontWeight: FontWeight.bold),)),
                    ),
                  ),

                ],
              )
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.width * 0.37,
            right: MediaQuery.of(context).size.width * 0.35,
            child: InkWell(
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
          ),
        ],
      ),
    );
  }

  var mydata;
  File? file;
  final picker = ImagePicker();
  void _choose() async {
    final pickedFile = await picker.getImage(
        source: ImageSource.gallery,
        imageQuality: 50,
        maxHeight: 500,
        maxWidth: 500);
    setState(() {
      if (pickedFile != null) {
        file = File(pickedFile.path);
        final bytes = File(pickedFile.path).readAsBytesSync();
        String img64 = base64Encode(bytes);
        mydata = img64;
        print('Abhinav');
        print(img64);
        print('Thi');
      } else {
        print('No image selected.');
      }
    });
  }

  Updateprofile(
      String name,

      ) async {



    print('ggggggggggggg');
    final prefs1 = await SharedPreferences.getInstance();
    final useid=prefs1.getInt('user_id') ?? 0;
    final response = await http.post(
      Uri.parse('https://rlg.apponrent.co.in/api/profile_update.php'),
      headers: {"Content-Type": "application/json"},
      body: json.encode({
        "userid": useid,
        "name": name,
        "image": mydata,
      }),
    );
    print('bbbbb');
    final data = jsonDecode(response.body);
    print(data);
    print('ssssss');
    print(response.statusCode);
    if (data["success"] == "200") {
      // setState(() {
      //   _loading = false;
      // });
      Fluttertoast.showToast(
          msg: data["msg"],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 10.0);

     // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomN()));
    } else {
      // setState(() {
      //   _loading = false;
      // });
      Fluttertoast.showToast(
          msg: data["msg"],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 10.0);
    }
  }
}
