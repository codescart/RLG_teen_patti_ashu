import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<Widget> _screens = [
    // Content for Home tab
    Container(
      color: Colors.yellow.shade100,
      alignment: Alignment.center,
      child: const Text(
        'Home',
        style: TextStyle(fontSize: 40),
      ),
    ),
    // Content for Favorites tab
    Container(
      color: Colors.red.shade100,
      alignment: Alignment.center,
      child: const Text(
        'Favorites',
        style: TextStyle(fontSize: 40),
      ),
    ),
    // Content for Settings tab
    Container(
      color: Colors.pink.shade300,
      alignment: Alignment.center,
      child: const Text(
        'Settings',
        style: TextStyle(fontSize: 40),
      ),
    )
  ];

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar:  MediaQuery.of(context).size.width < 640?
      // BottomNavigationBar(
      //     currentIndex: _selectedIndex,
      //     unselectedItemColor: Colors.grey,
      //     selectedItemColor: Colors.indigoAccent,
      //     // called when one tab is selected
      //     onTap: (int index) {
      //       setState(() {
      //         _selectedIndex = index;
      //       });
      //     },
      //     // bottom tab items
      //     items: const [
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.home), label: 'Home'),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.favorite), label: 'Favorites'),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.settings), label: 'Settings')
      //     ]):null,
      body: Row(
        children: [
          //if (MediaQuery.of(context).size.width >= 640)
            Container(height: 300,
              child: NavigationRail(
                backgroundColor: Colors.white,
                minWidth: 200,
                onDestinationSelected: (int index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                selectedIndex: _selectedIndex,
                destinations:  [
                  
                  NavigationRailDestination(
                      icon: Container(
                        height: MediaQuery.of(context).size.height*0.0980,
                        width: MediaQuery.of(context).size.width*0.15,
                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/images/chipsyellowbutton.png"),fit: BoxFit.fill)
                                ),
                               child: Center(child: Text("Promo Code",style: TextStyle(color: Color(0xff3a2407),fontSize:16,fontWeight: FontWeight.bold),)),

                      ), label: Text('')),
                  NavigationRailDestination(
                      icon: Container(
                        height: MediaQuery.of(context).size.height*0.0980,
                        width: MediaQuery.of(context).size.width*0.15,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/chipsyellowbutton.png"),fit: BoxFit.fill)
                        ),
                        child: Center(child: Text("Add Chips",style: TextStyle(color: Color(0xff3a2407),fontSize:16,fontWeight: FontWeight.bold),)),

                      ), label: Text('')),
                  NavigationRailDestination(
                      icon: Container(
                        height: MediaQuery.of(context).size.height*0.0980,
                        width: MediaQuery.of(context).size.width*0.15,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/chipsyellowbutton.png"),fit: BoxFit.fill)
                        ),
                        child: Center(child: Text("Gift Chips",style: TextStyle(color: Color(0xff3a2407),fontSize:16,fontWeight: FontWeight.bold),)),

                      ), label: Text('')),
                  NavigationRailDestination(
                      icon: Container(
                        height: MediaQuery.of(context).size.height*0.0980,
                        width: MediaQuery.of(context).size.width*0.15,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/chipsyellowbutton.png"),fit: BoxFit.fill)
                        ),
                        child: Center(child: Text("Gift Chips",style: TextStyle(color: Color(0xff3a2407),fontSize:16,fontWeight: FontWeight.bold),)),

                      ), label: Text('')),
                  NavigationRailDestination(
                      icon: Container(
                        height: MediaQuery.of(context).size.height*0.0980,
                        width: MediaQuery.of(context).size.width*0.15,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/chipsyellowbutton.png"),fit: BoxFit.fill)
                        ),
                        child: Center(child: Text("Gift Chips",style: TextStyle(color: Color(0xff3a2407),fontSize:16,fontWeight: FontWeight.bold),)),

                      ), label: Text('')),
                ],

                // labelType: NavigationRailLabelType.all,
                // selectedLabelTextStyle: const TextStyle(
                //   color: Colors.teal,
                // ),
                //
                // unselectedLabelTextStyle: const TextStyle(),
                // Called when one tab is selected

              ),
            ),
          Expanded(child: _screens[_selectedIndex])
        ],
      ),

    );
  }
}