import 'package:flutter/material.dart';
import 'package:profile/model/company_info.dart';
import 'package:profile/widgets/company_details.dart';
import 'package:profile/widgets/company_item.dart';


class CompanyList extends StatelessWidget {
  final cInfo = CompanyInfo.generateCompanyList();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
     height: 200,
     child: ListView.separated(
       padding: EdgeInsets.symmetric(horizontal: 30),
       scrollDirection: Axis.horizontal,
         physics: BouncingScrollPhysics(),
         itemBuilder: (context,index){
           return GestureDetector(
             onTap: (){
               showModalBottomSheet(
                 isScrollControlled: true,
                 backgroundColor: Colors.transparent,
                 context: context,
                 builder: (context)=>CompanyDetails(cInfo[index]),
               );
             },
               child: CompanyItem(cInfo[index]));
         },
         separatorBuilder: (_,index)=>SizedBox(width: 15,),
         itemCount: cInfo.length),
    );
  }
}
