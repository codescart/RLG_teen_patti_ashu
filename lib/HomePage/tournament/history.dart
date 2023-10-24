import 'package:flutter/material.dart';
class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
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
            height: MediaQuery.of(context).size.height*0.9,
            width:  MediaQuery.of(context).size.width*0.9,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/questable.png"),
                    fit: BoxFit.fill)),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.13,
                  width:  MediaQuery.of(context).size.width*0.48,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/tourhistory.png",),fit: BoxFit.fill)
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.width*0.37,
            left: MediaQuery.of(context).size.width*0.85,
            child: InkWell(onTap: (){Navigator.pop(context);},
              child: Container(
                height: MediaQuery.of(context).size.height*0.0950,
                width: MediaQuery.of(context).size.width*0.0600,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/cross.png"),fit: BoxFit.fill)
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
