import 'package:flutter/material.dart';
import 'package:profile/model/company_info.dart';
import 'package:profile/widgets/company_list.dart';


class CompanyItem extends StatelessWidget {
 final CompanyInfo companyInfo;
  CompanyItem(this.companyInfo);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
            borderRadius: BorderRadius.circular(30)
      ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20)

                    ),
                    child: Image.asset(companyInfo.logoUrl),
                  ),
                  SizedBox(width: 20),
                  Text(companyInfo.company, style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(Icons.bookmark_border_outlined, color: Colors.grey, size: 30),
            ],
          ),
          SizedBox(height: 15),
          Text(companyInfo.title, style:
          TextStyle(
            fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Icon(Icons.location_on_outlined, color: Colors.yellow,size: 32),
              SizedBox(width: 10),
              Text(companyInfo.location,style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.normal, color: Colors.grey.withOpacity(0.9)
              ),)
            ],
          ),
        ],
      ),
    );
  }
}
