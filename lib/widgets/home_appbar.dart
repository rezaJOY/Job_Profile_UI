import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top, //for responsive
                               left: MediaQuery.of(context).padding.bottom
      ),
      child: Container(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 30.0),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: const [
                       Text(
                           'Welcome Home', style: TextStyle(color:Colors.grey,
                           fontWeight: FontWeight.bold),
                       ),
                       SizedBox(
                         height: 10,
                       ),
                       Text(
                         'Rick Sanchez', style: TextStyle(
                         fontSize: 28, fontWeight: FontWeight.bold,color: Colors.black
                       ),
                       ),
                     ],
                   ),
                 ),
                 Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(12.0),
                       child: Container(
                         margin: EdgeInsets.only(top: 35, right: 35),
                         transform: Matrix4.rotationZ(100),
                         child: Stack(
                           children: [
                             const Icon(
                               Icons.notifications_none_outlined,size: 30, color: Colors.grey,
                             ),
                             Positioned(
                               top: 0, right: 0,
                                 child: Container(
                                   padding: EdgeInsets.all(4),
                                   decoration: const BoxDecoration(
                                     color: Colors.red,
                                     shape: BoxShape.circle
                                   ),
                               ),
                             ),
                           ],
                         ),
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: ClipOval(
                         child: Image.asset('assets/images/avatar.png', width: 50),


                         //45:00 min

                       ),
                     ),
                   ],

                 ),

               ],
             ),


      ),
    );
  }
}
