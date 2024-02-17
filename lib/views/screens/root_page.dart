import 'package:flutter/material.dart';
import 'package:nike_sneakers_ui/views/screens/home_page.dart';
import 'package:nike_sneakers_ui/views/widget/my_navbar.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentIndex = 0;

  List<Widget> screens = [
    const HomePage(),
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.amber,
    )
  ];

  _navigateScreens(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      bottomNavigationBar: MyNavBar(
        onTap: (p0) => _navigateScreens,
        index: currentIndex,
      ),
      body: screens[currentIndex],
    );
  }
}

// DefaultTabController(
//       length: 4,
//       child: Scaffold(
        
//         backgroundColor: Colors.grey.shade300,
//         body: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//           child: SingleChildScrollView(
//             scrollDirection: Axis.vertical,
//             physics: const ScrollPhysics(),
//             child: Column(
//               children: [
//                 const SizedBox(
//                   height: 30,
//                 ),

                
//                 const SizedBox(
//                   height: 20,
//                 ),

//                 //heading
//                 Container(
// //                   alignment: AlignmentDirectional.topStart,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
                      
//                       const SizedBox(
//                         height: 10,
//                       ),

//                       // searchbar
                      
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       //tabar lists
//                       SizedBox(
//                         height: 70,
//                         width: 500,
                        
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
                     
//                     ],
//                   ),
//                 ),
                 
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

