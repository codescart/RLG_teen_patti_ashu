import 'package:flutter/material.dart';
import 'package:ultimate_teen_patti/Slidetransdep/add_to_cart_animation.dart';

class SlideShowTrans extends StatefulWidget {
  // const SlideShowTrans({Key? key, required this.title}) : super(key: key);
  // final String title;

  @override
  SlideShowTransState createState() => SlideShowTransState();
}

class SlideShowTransState extends State<SlideShowTrans> {
  // We can detect the location of the cart by this  GlobalKey<CartIconKey>
  // GlobalKey<CartIconKey> cartKey1 = GlobalKey<CartIconKey>();
  GlobalKey<CartIconKey> cartKey2 = GlobalKey<CartIconKey>();
  GlobalKey<CartIconKey> cartKey3 = GlobalKey<CartIconKey>();
  GlobalKey<CartIconKey> cartKey4 = GlobalKey<CartIconKey>();
  GlobalKey<CartIconKey> cartKey5 = GlobalKey<CartIconKey>();
  late Function(GlobalKey) runAddToCartAnimation;
  var _cartQuantityItems = 0;

  @override
  Widget build(BuildContext context) {

    return AddToCartAnimations(
      // To send the library the location of the Cart icon
      cartKey: cartKey3,
      height: 30,
      width: 30,
      opacity: 0.85,
      dragAnimation: const DragToCartAnimationOptions(
        rotation: true,
      ),
      jumpAnimation: const JumpAnimationOptions(),
      createAddToCartAnimation: (runAddToCartAnimation) {
        // You can run the animation by addToCartAnimationMethod, just pass trough the the global key of  the image as parameter
        this.runAddToCartAnimation = runAddToCartAnimation;
      },
      child: Scaffold(


        body: Stack(
          children: [
            Positioned(
              bottom: 1,
                right: 20,
                child: AddToCartIcon(
              key: cartKey3,
              child:  Image.network(
                "https://cdn.pixabay.com/photo/2016/12/22/10/01/hand-1925091_1280.png")
                  // 'http://foundercodes.com/assets/front/img/team/16533953521125184550.png'),
            )),
            Positioned(child: AppListItem(
              onClick: listClick,
              index: 1,
            ),)
          ],
        ),
      ),
    );
  }

  void listClick(GlobalKey widgetKey) async {
    await runAddToCartAnimation(widgetKey);
    // await cartKey.currentState!
    //     .runCartAnimation((++_cartQuantityItems).toString());
  }
}

class AppListItem extends StatelessWidget {
  final GlobalKey widgetKey = GlobalKey();
  final int index;
  final void Function(GlobalKey) onClick;

  AppListItem({super.key, required this.onClick, required this.index});
  @override
  Widget build(BuildContext context) {
    //  Container is mandatory. It can hold images or whatever you want
    Container mandatoryContainer = Container(
      key: widgetKey,
      width: 60,
      height: 60,
      color: Colors.transparent,
      child: Image.network(
        "https://cdn.pixabay.com/photo/2016/12/22/10/01/hand-1925091_1280.png",
        width: 60,
        height: 60,
      ),
    );

    return ListTile(
      onTap: () => onClick(widgetKey),
      leading: mandatoryContainer,
      title: Text(
        "$index",
      ),
    );
  }
}