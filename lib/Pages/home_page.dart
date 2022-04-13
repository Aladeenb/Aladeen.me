import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: TabBar(
            // Color.fromRGBO(4, 31, 96, 1)
            indicatorColor: Color.fromRGBO(75, 228, 255, 1),
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 5,
            isScrollable: true,
            padding: EdgeInsets.only(top: 5),
            tabs: [
              Tab(
                child: Text(
                  'Hello',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Projects',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Writing',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Connect',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          foregroundColor: Colors.blue.shade800,
          backgroundColor: Colors.white,
        ),
        body: Stack(
          children: <Widget>[
            TabBarView(
              children: [
                Container(
                    child: Stack(
                  children: <Widget>[
                    ListView(
                      // shrinkWrap: true,
                      //padding: const EdgeInsets.all(8),
                      children: <Widget>[
                        Center(
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(
                              minWidth: 200,
                              minHeight: 200,
                              maxWidth: 350,
                              maxHeight: 350,
                            ),
                            child: Container(
                                alignment: Alignment.center,
                                width: 300,
                                height: 200,
                                child: Text(
                                  "Over the past few decades, the internet was the new technology that came and changed the way we live, study and work.I believe blockchain will become that new technology and will define the upcoming decades.",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                )),
                          ),
                        ),
                        Center(
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(
                              minWidth: 200,
                              minHeight: 100,
                              maxWidth: 350,
                              maxHeight: 350,
                            ),
                            child: Container(
                                alignment: Alignment.center,
                                width: 300,
                                height: 100,
                                child: Text(
                                  "Apart from my major, I'm focusing on learning more about Blockchain Technology mainly and Ethereum explicitly.",
                                  style: const TextStyle(fontSize: 16),
                                )),
                          ),
                        )
                      ],
                    )
                    // Container(
                    //  color: Colors.grey,
                    // margin: EdgeInsets.fromLTRB(10, 40, 40, 10),
                    // child: RichText(
                    //   text: TextSpan(
                    //     style: TextStyle(),
                    //     children: <TextSpan>[
                    //       TextSpan(
                    //         text: "This is a description\n",
                    //         style: TextStyle(
                    //             fontSize: 20, fontWeight: FontWeight.w400),
                    //       ),
                    //     ],
                    //   ),
                    // )
                    //),
                    // Container(
                    //     margin: EdgeInsets.fromLTRB(10, 200, 200, 10),
                    //     color: Colors.black,
                    //     child: RichText(
                    //       text: TextSpan(
                    //         style: TextStyle(),
                    //         children: <TextSpan>[
                    //           TextSpan(
                    //             text: "This is a description\n",
                    //             style: TextStyle(
                    //                 fontSize: 20, fontWeight: FontWeight.w400),
                    //           ),
                    //         ],
                    //       ),
                    //     )),
                  ],
                )),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 40, 40, 10),
                  child: Text(
                    'no projects published yet.',
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 40, 40, 10),
                  child: Text(
                    'no writings published yet.',
                  ),
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(10, 40, 40, 10),
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(text: "Contact me on "),
                      TextSpan(
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent),
                          text: "LinkedIn",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async {
                              var url =
                                  "https://www.linkedin.com/in/ala-eddine-battikh-b60616211/";
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            }),
                    ]))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
