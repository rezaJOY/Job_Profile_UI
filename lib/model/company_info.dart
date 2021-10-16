class CompanyInfo{
  String logoUrl;
  String company;
  String title;
  String location;
  List<String> req;

  CompanyInfo(
      this.logoUrl, this.company, this.title, this.location,  this.req
      );

 static List<CompanyInfo> generateCompanyList(){
    return[
      CompanyInfo(
        'assets/images/airbnb_logo.png', 'Airbnb Inc,',
          'VP Business Intelligence',
        '417 Marion Plaza, Texas \n United States',
        [   //optional parameter
          'Create with an eye for shape and color.',
          'Understand Different Material and Production \n Method.',
          'Have technical, practical and scientific \n Knowledge and ability.',
          'Interested in the way people choose and use products.'
        ]
      ),
      CompanyInfo(
          'assets/images/google_logo.png', 'Google LLC',
          'Product Design',
          '417 Marion Plaza, Texas \n United States',
          [   //optional parameter
            'Create with an eye for shape and color.',
            'Understand Different Material and Production \n Method.',
            'Have technical, practical and scientific \n Knowledge and ability.',
            'Interested in the way people choose and use products.'
          ]
      ),
      CompanyInfo(
          'assets/images/linkedin_logo.png', 'LinkedIn',
          'VP Cyber Intelligence',
          '417 Marion Plaza, Texas \n United States',
          [   //optional parameter
            'Create with an eye for shape and color.',
            'Understand Different Material and Production \n Method.',
            'Have technical, practical and scientific \n Knowledge and ability.',
            'Interested in the way people choose and use products.'
          ]
      ),
    ];

  }
}