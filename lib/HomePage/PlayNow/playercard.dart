import 'package:flutter/material.dart';


class PlayerCard extends StatefulWidget {
  String status;
  String showstatus;
  String card1;
  String card2;
  String card3;
  String pack;
  bool SideShow;

  PlayerCard({Key? key, required this.status,required this.showstatus,required this.card1,required this.card2,required this.card3, required this.pack, required this.SideShow
  }) : super(key: key);

  @override
  State<PlayerCard> createState() => _PlayerCardState();
}

class _PlayerCardState extends State<PlayerCard> {

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Positioned(
          child: Container(
            height: 30,
            width: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(height: 30, width: 20,
                  child: Opacity(

                      opacity:widget.pack==true?0.4:1.0,
                      child: Image.network(widget.card1=='0'?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':widget.card1, )),
                ),
                Container(height: 30, width: 20,
                  child: Opacity(
                      opacity:widget.pack==true?0.4:1.0,
                      child: Image.network(widget.card2=='0'?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':widget.card2, )),        ),
                Container(height: 30, width: 20,
                  child: Opacity(
                      opacity:widget.pack==true?0.4:1.0,
                      child: Image.network(widget.card3=='0'?'https://previews.123rf.com/images/rlmf/rlmf1512/rlmf151200181/49319355-playing-cards-back.jpg':widget.card3, )),        )

              ],
            ),
          ),
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
                image:DecorationImage(
                    colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate,),
                    image: AssetImage("assets/images/settbutton.png"),
                    fit: BoxFit.fill)
            ),
            child: Text('pack'),
          ),
        )
      ],
    );
  }
}
