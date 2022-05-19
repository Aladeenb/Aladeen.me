import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mailto/mailto.dart';

class HomePage extends StatelessWidget {
  final String _url_linkedin =
      'https://www.linkedin.com/in/ala-eddine-battikh-b60616211/';
  final String _url_github = 'https://github.com/Aladeenb';
  final String _url_medium = 'https://medium.com/@aladeen.btk';
  final String _url_eth_overflow =
      'https://ethereum.stackexchange.com/users/97072/laycodes';

  final String _url_multiSigWallet =
      'https://github.com/Aladeenb/Multi-Signature-Wallet';

  final String _url_credit_card_fraud_prediction =
      'https://github.com/Aladeenb/credit-card-fraud-prediction';
  final String _url_guess_the_number =
      'https://github.com/Aladeenb/guess-the-number';
  final String _url_digital_chess_timer =
      'https://github.com/Aladeenb/digital-chess-timer';
  final String _url_basic_linux_shell =
      'https://github.com/Aladeenb/basic-linux-shell';
  final String _url_rfid_attendance_system =
      'https://github.com/Aladeenb/RFID-attendance-system';
  final String _url_game_engine = 'https://github.com/LOH-puzik/Game-Engine';

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
                                              color: Colors.blueGrey.shade50,
                                              child: ConstrainedBox(
                                                constraints: BoxConstraints(
                                                    maxHeight: 200),

                                                //  shape: RoundedRectangleBorder(
                                                //    borderRadius:
                                                //        BorderRadius.circular(
                                                //            0.0),
                                                //  ),
                                                //  shadowColor:
                                                //      Colors.blueGrey.shade50,
                                                child: ListTile(
                                                  contentPadding:
                                                      EdgeInsets.fromLTRB(
                                                          20, 10, 20, 10),
                                                  title: Text('Overview',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w100,
                                                        fontSize: 18,
                                                        color: Colors.black87,
                                                      )),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Container(
                                              child: ConstrainedBox(
                                                constraints: BoxConstraints(
                                                    maxHeight: 200),
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
                                                          "\nI'm a third-year undergraduate student majoring in Electronics, Information and telecommunications Technologies engineering.",
                                                      style: GoogleFonts
                                                          .lexendDeca(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              fontSize: 14,
                                                              color: Colors
                                                                  .black87),
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
                                                child: ConstrainedBox(
                                              constraints: BoxConstraints(
                                                  maxHeight: 200),
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
                                                    style:
                                                        GoogleFonts.lexendDeca(
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            fontSize: 14,
                                                            color:
                                                                Colors.black87),
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
                                              child: ConstrainedBox(
                                                constraints: BoxConstraints(
                                                    maxHeight: 200),
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
                                                          "\nI participate on CTF competitions with my lovely diverse squad and plan to pursue a master degree in cybersecurity.",
                                                      style: GoogleFonts
                                                          .lexendDeca(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              fontSize: 14,
                                                              color: Colors
                                                                  .black87),
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
                  child: Container(
                      margin: EdgeInsets.fromLTRB(10, 40, 10, 10),
                      child: Center(
                          child: ConstrainedBox(
                              constraints:
                                  BoxConstraints(maxWidth: 800, minHeight: 400),
                              child: ListView(
                                children: <Widget>[
                                  Card(
                                      child: ListTile(
                                    title: Text(
                                      'Multi-signature Wallet',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    subtitle: Text(
                                      'basic multi-signature wallet for ethereum.',
                                      style:
                                          GoogleFonts.lexendDeca(fontSize: 12),
                                    ),
                                    onTap: _launchURL_multiSigWallet,
                                  )),
                                  Card(
                                      child: ListTile(
                                    title: Text(
                                      'Credit card fraud prediction',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    subtitle: Text(
                                      'machine learning model to predict credit cards frauds.',
                                      style:
                                          GoogleFonts.lexendDeca(fontSize: 12),
                                    ),
                                    onTap:
                                        _launchURL_credit_card_fraud_prediction,
                                  )),
                                  Card(
                                      child: ListTile(
                                    title: Text(
                                      'Guess the number',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    subtitle: Text(
                                      'mini-game in assembler',
                                      style:
                                          GoogleFonts.lexendDeca(fontSize: 12),
                                    ),
                                    onTap: _launchURL_guess_the_number,
                                  )),
                                  Card(
                                      child: ListTile(
                                    title: Text(
                                      'Chess digital timer',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    subtitle: Text(
                                      'simulation of a chess timer using Logisim',
                                      style:
                                          GoogleFonts.lexendDeca(fontSize: 12),
                                    ),
                                    onTap: _launchURL_digital_chess_timer,
                                  )),
                                  Card(
                                      child: ListTile(
                                    title: Text(
                                      'Linux shell',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    subtitle: Text(
                                      'linux shell with different functionalities created in C',
                                      style:
                                          GoogleFonts.lexendDeca(fontSize: 12),
                                    ),
                                    onTap: _launchURL_basic_linux_shell,
                                  )),
                                  Card(
                                      child: ListTile(
                                    title: Text(
                                      'RFID attendance system',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    subtitle: Text(
                                      'attendance system with RFID technology',
                                      style:
                                          GoogleFonts.lexendDeca(fontSize: 12),
                                    ),
                                    onTap: _launchURL_rfid_attendance_system,
                                  )),
                                  Card(
                                      child: ListTile(
                                    title: Text(
                                      'Game engine + scene',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    subtitle: Text(
                                      'a 3D map created from a self-made game engine',
                                      style:
                                          GoogleFonts.lexendDeca(fontSize: 12),
                                    ),
                                    onTap: _launchURL_game_engine,
                                  )),
                                ],
                              )))),
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
                        child: Text(
                          'e-mail',
                          style: GoogleFonts.robotoMono(
                              color: Colors.black54, fontSize: 12),
                        ),
                      )),
                      Container(
                        child: ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 300),
                          child: Card(
                            color: Colors.blueGrey.shade50,
                            elevation: 0,
                            child: ListTile(
                              title: Text(
                                'aladeen.btk@gmail.com',
                                style: TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                              onTap: launchMailto,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20),
                      ),
                      Center(
                          child: Container(
                        child: Text(
                          'social',
                          style: GoogleFonts.robotoMono(
                              color: Colors.black54, fontSize: 12),
                        ),
                      )),
                      Container(
                        padding: EdgeInsets.only(top: 10),
                      ),
                      Center(
                          child: Container(
                        //margin: const EdgeInsets.symmetric(vertical: 1),
                        width: 360.0,
                        height: 20.0,
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
                      )),
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

  void _launchURL_multiSigWallet() async {
    if (!await launch(_url_multiSigWallet))
      throw 'Could not launch $_url_multiSigWallet';
  }

  void _launchURL_credit_card_fraud_prediction() async {
    if (!await launch(_url_credit_card_fraud_prediction))
      throw 'Could not launch $_url_credit_card_fraud_prediction';
  }

  void _launchURL_guess_the_number() async {
    if (!await launch(_url_guess_the_number))
      throw 'Could not launch $_url_guess_the_number';
  }

  void _launchURL_digital_chess_timer() async {
    if (!await launch(_url_digital_chess_timer))
      throw 'Could not launch $_url_digital_chess_timer';
  }

  void _launchURL_basic_linux_shell() async {
    if (!await launch(_url_basic_linux_shell))
      throw 'Could not launch $_url_basic_linux_shell';
  }

  void _launchURL_rfid_attendance_system() async {
    if (!await launch(_url_rfid_attendance_system))
      throw 'Could not launch $_url_rfid_attendance_system';
  }

  void _launchURL_game_engine() async {
    if (!await launch(_url_game_engine))
      throw 'Could not launch $_url_game_engine';
  }

  launchMailto() async {
    final mailtoLink = Mailto(
      to: ['aladeen.btk@gmail.com'],

      //subject: 'mailto example subject',
      //body: 'mailto example body',
    );
    // Convert the Mailto instance into a string.
    // Use either Dart's string interpolation
    // or the toString() method.
    await launch('$mailtoLink');
  }
}
