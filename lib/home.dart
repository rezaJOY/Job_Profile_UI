import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:profile/widgets/company_list.dart';
import 'package:profile/widgets/home_appbar.dart';
import 'package:profile/widgets/searchbar.dart';
import 'package:profile/widgets/tag_list.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(),

              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.grey.withOpacity(0.1)
                ),

              ),
            ],
          ),
          Column(
            children: [
              HomeAppbar(),
              SearchBar(),
              TagList(),
              CompanyList(),

            ],
          ),
        ],
      ),
     /* floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        elevation: 0,
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.add, color: Colors.white),
      ),

      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent
        ),

       child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Theme.of(context).primaryColor,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home, size: 25)
            ),
            BottomNavigationBarItem(
                label: 'Case',
                icon: Icon(Icons.cases_outlined, size: 25)
            ),
            BottomNavigationBarItem(
                label: '',
                icon: Text(''),
            ),
            BottomNavigationBarItem(
                label: 'Chat',
                icon: Icon(Icons.chat_bubble_outline_sharp, size: 25)
            ),
            BottomNavigationBarItem(
                label: 'person',
                icon: Icon(Icons.person_outline_rounded, size: 25)
            ),
          ],
        ),


        ),*/

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 25.0),
        child: CurvedNavigationBar(

          color: Colors.white,
          backgroundColor: Colors.grey.withOpacity(0.1),
          buttonBackgroundColor:  Colors.yellow,
          height: 50,
          items: <Widget>[
            Icon(Icons.home, size: 26, color: Color(0xff01b2b8)),
            Icon(Icons.cases_outlined, size: 26, color: Color(0xff01b2b8)),
            Icon(Icons.add_outlined, size: 28, color: Color(0xff01b2b8)),
            Icon(Icons.chat_bubble_outline_sharp, size: 26, color: Color(0xff01b2b8)),
            Icon(Icons.person_outline_rounded, size: 26, color: Color(0xff01b2b8)),
          ],
          animationDuration: Duration(
            microseconds: 200
          ),
          index: 2,
          animationCurve: Curves.bounceInOut,
          onTap: (index){
             debugPrint("Current Index is $index");
          },
        ),
      ),


    );
  }
}
