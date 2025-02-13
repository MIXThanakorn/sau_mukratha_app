import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MenuUi extends StatefulWidget {
  const MenuUi({super.key});

  @override
  State<MenuUi> createState() => _MenuUiState();
}

class _MenuUiState extends State<MenuUi> {
  List<String> menuShow = [
    'assets/images/img1.png',
    'assets/images/img2.png',
    'assets/images/img3.png',
    'assets/images/img4.png',
    'assets/images/img5.png',
    'assets/images/img6.png',
    'assets/images/img7.png',
  ];

  List<String> branchShop = [
    'assets/images/shop1.png',
    'assets/images/shop2.png',
    'assets/images/shop3.png',
    'assets/images/shop4.png',
    'assets/images/shop5.png',
  ];

  List<String> shopLocation = [
    'https://www.google.com/maps/@13.7066474,100.3564928,17z/',
    'https://www.google.com/maps/@13.7762674,100.4565979,17z/',
    'https://www.google.com/maps/@13.1759235,99.8240641,14.75z/',
    'https://www.google.com/maps/@13.0374684,99.8194722,14.75z/',
    'https://www.google.com/maps/@17.7096138,98.5113108,12z/',
  ];

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
              Image.asset(
                'assets/images/logo.png',
                width: 200,
                height: 200,
              ),
              Text(
                'Reccoment Dishes',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
              Container(
                  height: 100,
                  margin: EdgeInsets.only(left: 25, right: 25),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: menuShow.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: (Image.asset(menuShow[index]))),
                    ),
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text(
                'Branch',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                  height: 250,
                  margin: EdgeInsets.only(left: 25, right: 25),
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: branchShop.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: InkWell(
                              onTap: () {
                                _launchInBrowser(
                                    Uri.parse(shopLocation[index]));
                              },
                              child: (Image.asset(branchShop[index])))),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
