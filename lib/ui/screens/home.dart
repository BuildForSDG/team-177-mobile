import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/services_card.dart';
import '../widgets/nav_bar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white));
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        brightness: Brightness.light,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "KenRight",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          InkWell(
            onTap: () => Navigator.pushNamed(
              context,
              "/services",
              arguments:
                  "http://www.kenyalaw.org:8181/exist/kenyalex/actview.xql?actid=Const2010",
            ),
            child: ServiceCard(
              name: "Kenyan Constitution",
              image: "assets/images/constitution.png",
            ),
          ),
          InkWell(
            onTap: () => Navigator.pushNamed(
              context,
              "/services",
              arguments: "http://kenyalaw.org/kenya_gazette/gazette/",
            ),
            child: ServiceCard(
              name: "Kenya Gazette",
              image: "assets/images/gazette.png",
            ),
          ),
          InkWell(
            onTap: () => Navigator.pushNamed(
              context,
              "/services",
              arguments: "http://kenyalaw.org:8181/exist/kenyalex/index.xql",
            ),
            child: ServiceCard(
              name: "The Laws Of Kenya",
              image: "assets/images/law.png",
            ),
          ),
          InkWell(
            onTap: () => Navigator.pushNamed(
              context,
              "/services",
              arguments: "https://www.knchr.org/About-Us/Establishment",
            ),
            child: ServiceCard(
              name: "KNCHR",
              image: "assets/images/rights.png",
            ),
          ),
          InkWell(
            onTap: () => Navigator.pushNamed(
              context,
              "/services",
              arguments:
                  "https://www.undp.org/content/undp/en/home/sustainable-development-goals.html",
            ),
            child: ServiceCard(
              name: "SDG",
              image: "assets/images/sdg.png",
            ),
          ),
        ],
      ),
    );
  }
}
