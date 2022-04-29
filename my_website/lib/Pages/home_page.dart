import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  String _url_linkedin =
      'https://www.linkedin.com/in/ala-eddine-battikh-b60616211/';
  String _url_github = 'https://github.com/Aladeenb';
  String _url_medium = 'https://medium.com/@aladeen.btk';
  String _url_eth_overflow =
      'https://ethereum.stackexchange.com/users/97072/laycodes';
  @override
  Widget build(BuildContext context) {
    ThemeData(
      primaryColor: Colors.white,
    );

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          title: TabBar(
            labelStyle: GoogleFonts.robotoMono(
              fontSize: 12,
            ),
            // Color.fromRGBO(4, 31, 96, 1)
            indicatorColor:
                Colors.blueGrey.shade50, //Color.fromRGBO(75, 228, 255, 1),
            labelColor: Colors.black87, //Color.fromRGBO(75, 228, 255, 1),
            unselectedLabelColor: Colors.grey, //Color.fromRGBO(4, 31, 96, 1),
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 5,
            isScrollable: true,
            padding: EdgeInsets.only(top: 5),

            tabs: [
              Tab(
                child: Text(
                  'Hello',
                ),
              ),
              Tab(
                child: Text(
                  'Projects',
                ),
              ),
              Tab(
                child: Text(
                  'Writings',
                ),
              ),
              Tab(
                child: Text(
                  'Connect',
                ),
              ),
            ],
          ),

          backgroundColor: Colors.white, // Color.fromRGBO(4, 31, 96, 1),
        ),
        body: Stack(
          children: <Widget>[
            TabBarView(
              children: [
                Container(
                    color: Colors.blueGrey.shade50,
                    child: Stack(
                      children: <Widget>[
                        ListView(
                          // shrinkWrap: true,
                          //padding: const EdgeInsets.all(8),
                          children: <Widget>[
                            Center(
                                child: Container(
                                    //color: Colors.red,
                                    margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
                                    alignment: Alignment.center,
                                    child: ConstrainedBox(
                                      constraints: const BoxConstraints(
                                        minWidth: 50,
                                        minHeight: 400,
                                        maxWidth: 700,
                                        maxHeight: 550,
                                      ),
                                      child: ListView(
                                        children: <Widget>[
                                          Center(
                                            child: Container(
                                              //color: Colors.red,
                                              child: Card(
                                                color: Colors.blueGrey.shade50,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                shadowColor:
                                                    Colors.blueGrey.shade50,
                                                child: ListTile(
                                                  contentPadding:
                                                      EdgeInsets.fromLTRB(
                                                          20, 10, 20, 10),
                                                  title: Text('I am',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w100,
                                                        fontSize: 30,
                                                        color: Colors.black87,
                                                      )),
                                                ),
                                              ),
                                            ),
                                          ),
                                          //Center(
                                          //  child: Container(
                                          //      child: Card(
                                          //          child: Container(
                                          //              decoration:
                                          //                  const BoxDecoration(
                                          //                gradient:
                                          //                    LinearGradient(
                                          //                  begin: Alignment
                                          //                      .topLeft,
                                          //                  end: Alignment
                                          //                      .bottomRight, // 10% of the width, so there are ten blinds.
                                          //                  colors: <Color>[
                                          //                    Colors.blueAccent,
                                          //                    Colors
                                          //                        .greenAccent,
                                          //                  ], // red to yellow
                                          //                  tileMode: TileMode
                                          //                      .repeated, // repeats the gradient over the canvas
                                          //                ),
                                          //              ),
                                          //              child: ListTile(
                                          //                title: Icon(
                                          //                  Icons
                                          //                      .school_outlined,
                                          //                  color:
                                          //                      Colors.white70,
                                          //                ),
                                          //                onTap: () {},
                                          //              )))),
                                          //),
                                          Center(
                                            child: Container(
                                              child: Card(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          1.0),
                                                ),
                                                clipBehavior: Clip.antiAlias,
                                                child: ListTile(
                                                  contentPadding:
                                                      EdgeInsets.fromLTRB(
                                                          20, 10, 20, 10),
                                                  title: Text(
                                                      'Undergradute student',
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 22,
                                                        color: Colors.black,
                                                      )),
                                                  subtitle: RichText(
                                                    textAlign: TextAlign.left,
                                                    text: TextSpan(
                                                      text:
                                                          "\nI'm pursuing a bachelor degree in Electronics, Information Technologies and telecommunication engineering. \nthird year (out of four).",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w200,
                                                        fontSize: 14,
                                                      ),
                                                      children: const <
                                                          TextSpan>[
                                                        TextSpan(
                                                            text: '',
                                                            style: TextStyle(
                                                                backgroundColor:
                                                                    Colors
                                                                        .black12,
                                                                color: Colors
                                                                    .black87)),
                                                        TextSpan(),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Container(
                                                //color: Colors.black,
                                                child: Card(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(1.0),
                                              ),
                                              child: ListTile(
                                                contentPadding:
                                                    EdgeInsets.fromLTRB(
                                                        20, 10, 20, 10),
                                                title: Text(
                                                    'Blockchain enthusiast',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 22,
                                                      color: Colors.black,
                                                    )),
                                                subtitle: RichText(
                                                  text: TextSpan(
                                                    text:
                                                        "\nI'm studying the Ethereum ecosystem in-depth, currently focusing on smart-contract development.",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w200,
                                                      fontSize: 14,
                                                    ),
                                                    children: const <TextSpan>[
                                                      TextSpan(
                                                          text: '',
                                                          style: TextStyle(
                                                              backgroundColor:
                                                                  Colors
                                                                      .black12,
                                                              color: Colors
                                                                  .black87)),
                                                      TextSpan(text: ''),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            )),
                                          ),
                                          Center(
                                            child: Container(
                                              child: Card(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          1.0),
                                                ),
                                                child: ListTile(
                                                  contentPadding:
                                                      EdgeInsets.fromLTRB(
                                                          20, 10, 20, 10),
                                                  title: Text(
                                                      'Passionate about Security',
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 22,
                                                        color: Colors.black,
                                                      )),
                                                  subtitle: RichText(
                                                    text: TextSpan(
                                                      text:
                                                          "\nI participate on CTF competitions with my lovely diverse squad and planning to pursue a master degree in cybersecurity.",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w200,
                                                        fontSize: 14,
                                                      ),
                                                      children: const <
                                                          TextSpan>[
                                                        TextSpan(
                                                            text: '',
                                                            style: TextStyle(
                                                                backgroundColor:
                                                                    Colors
                                                                        .black12,
                                                                color: Colors
                                                                    .black87)),
                                                        TextSpan(text: ''),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ))),
                          ],
                        )
                      ],
                    )),
                Container(
                  color: Colors.blueGrey.shade50,
                  child: Center(
                      child: Container(
                    child: Text(
                      'no projects published yet.',
                    ),
                  )
                      //margin: EdgeInsets.fromLTRB(10, 40, 40, 10),
                      ),
                ),
                Container(
                  color: Colors.blueGrey.shade50,
                  child: Center(
                      child: Container(
                    child: Text(
                      'no writings published yet.',
                    ),
                  )
                      //margin: EdgeInsets.fromLTRB(10, 40, 40, 10),
                      ),
                ),
                Container(
                  color: Colors.blueGrey.shade50,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 200),
                      ),
                      Center(
                          child: Container(
                        child: Text('social:'),
                      )),
                      Center(
                          child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 1),
                        width: 360.0,
                        height: 25.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Container(
                                color: Colors.blueGrey.shade50,
                                width: 95.0,
                                padding: EdgeInsets.only(left: 5, right: 5),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    shadowColor: MaterialStateProperty
                                        .resolveWith<Color?>(
                                      (Set<MaterialState> states) {
                                        return null; // Use the component's default.
                                      },
                                    ),
                                    backgroundColor: MaterialStateProperty
                                        .resolveWith<Color?>(
                                      (Set<MaterialState> states) {
                                        if (states
                                            .contains(MaterialState.hovered))
                                          return Colors.black87;
                                        return Colors.blueGrey
                                            .shade100; // Use the component's default.
                                      },
                                    ),
                                    foregroundColor: MaterialStateProperty
                                        .resolveWith<Color?>(
                                      (Set<MaterialState> states) {
                                        if (states
                                            .contains(MaterialState.hovered))
                                          return Colors.white;
                                        return Colors
                                            .black87; // Use the component's default.
                                      },
                                    ),
                                  ),
                                  onPressed: _launchURL_linkedin,
                                  child: Text(
                                    'LinkedIn',
                                    style: GoogleFonts.robotoMono(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                )),
                            Container(
                                width: 80.0,
                                padding: EdgeInsets.only(left: 5, right: 5),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    shadowColor: MaterialStateProperty
                                        .resolveWith<Color?>(
                                      (Set<MaterialState> states) {
                                        return null; // Use the component's default.
                                      },
                                    ),
                                    backgroundColor: MaterialStateProperty
                                        .resolveWith<Color?>(
                                      (Set<MaterialState> states) {
                                        if (states
                                            .contains(MaterialState.hovered))
                                          return Colors.black87;
                                        return Colors.blueGrey
                                            .shade100; // Use the component's default.
                                      },
                                    ),
                                    foregroundColor: MaterialStateProperty
                                        .resolveWith<Color?>(
                                      (Set<MaterialState> states) {
                                        if (states
                                            .contains(MaterialState.hovered))
                                          return Colors.white;
                                        return Colors
                                            .black87; // Use the component's default.
                                      },
                                    ),
                                  ),
                                  onPressed: _launchURL_url_github,
                                  child: Text(
                                    'GitHub',
                                    style: GoogleFonts.robotoMono(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                )),
                            Container(
                                width: 80.0,
                                padding: EdgeInsets.only(left: 5, right: 5),
                                //color: Colors.green,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    shadowColor: MaterialStateProperty
                                        .resolveWith<Color?>(
                                      (Set<MaterialState> states) {
                                        return null; // Use the component's default.
                                      },
                                    ),
                                    backgroundColor: MaterialStateProperty
                                        .resolveWith<Color?>(
                                      (Set<MaterialState> states) {
                                        if (states
                                            .contains(MaterialState.hovered))
                                          return Colors.black87;
                                        return Colors.blueGrey
                                            .shade100; // Use the component's default.
                                      },
                                    ),
                                    foregroundColor: MaterialStateProperty
                                        .resolveWith<Color?>(
                                      (Set<MaterialState> states) {
                                        if (states
                                            .contains(MaterialState.hovered))
                                          return Colors.white;
                                        return Colors
                                            .black87; // Use the component's default.
                                      },
                                    ),
                                  ),
                                  onPressed: _launchURL_medium,
                                  child: Text(
                                    'Medium',
                                    style: GoogleFonts.robotoMono(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                )),
                            Container(
                                width: 80.0,
                                padding: EdgeInsets.only(left: 5, right: 5),
                                //color: Colors.red,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    shadowColor: MaterialStateProperty
                                        .resolveWith<Color?>(
                                      (Set<MaterialState> states) {
                                        return null; // Use the component's default.
                                      },
                                    ),
                                    backgroundColor: MaterialStateProperty
                                        .resolveWith<Color?>(
                                      (Set<MaterialState> states) {
                                        if (states
                                            .contains(MaterialState.hovered))
                                          return Colors.black87;
                                        return Colors.blueGrey
                                            .shade100; // Use the component's default.
                                      },
                                    ),
                                    foregroundColor: MaterialStateProperty
                                        .resolveWith<Color?>(
                                      (Set<MaterialState> states) {
                                        if (states
                                            .contains(MaterialState.hovered))
                                          return Colors.white;
                                        return Colors
                                            .black87; // Use the component's default.
                                      },
                                    ),
                                  ),
                                  onPressed: _launchURL_overflow,
                                  child: Text(
                                    'Stack',
                                    style: GoogleFonts.robotoMono(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ))
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL_linkedin() async {
    if (!await launch(_url_linkedin)) throw 'Could not launch $_url_linkedin';
  }

  void _launchURL_url_github() async {
    if (!await launch(_url_github)) throw 'Could not launch $_url_github';
  }

  void _launchURL_medium() async {
    if (!await launch(_url_medium)) throw 'Could not launch $_url_medium';
  }

  void _launchURL_overflow() async {
    if (!await launch(_url_eth_overflow))
      throw 'Could not launch $_url_eth_overflow';
  }
}
