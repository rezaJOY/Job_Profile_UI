import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
      margin: const EdgeInsets.all(30),
      height: 300,
      width: double.infinity,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage('assets/images/search_bg.png'),
          fit: BoxFit.cover
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              'Fast Search', style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 26),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'You can Search Quickly for\n the job you want.', style: TextStyle( height: 1.8,
              color: Colors.white.withOpacity(0.7), fontWeight: FontWeight.normal, fontSize: 16),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(15),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(35),
             color: Colors.white
           ),
           child: Row(
             children: [
               Image.asset('assets/icons/search.png', width: 20),
               SizedBox(
                 width: 15,
               ),
               Text('Search', style: TextStyle(
                 fontSize: 18, color: Colors.grey.withOpacity(0.7)
               ),
               ),
             ],
           ),
          ),
        ],
      ),
    );

  }
}
