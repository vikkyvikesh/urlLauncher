import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 0,
          ),
          backgroundColor: Color(0xffF5F5F5),
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 29,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/madhubani_logo.png",
                        height: 101,
                        width: 101,
                      ),
                      // IconButton(
                      //   icon: new Icon(Icons.search,color: Colors.orangeAccent,),
                      //   highlightColor: Colors.deepOrange,
                      //   onPressed: () {
                      //   //   final url = "https://www.makhana.com/r/LwQ";
                      //   // launchUrl(Uri.parse(url));
                      //   },
                      // ),
                    ],
                  ),
                ),
                Container(
                  height: 185,
                  width: double.maxFinite,
                  margin: const EdgeInsets.symmetric(
                    vertical: 8,
                  ),
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: const LinearGradient(
                      colors: [
                        Colors.orangeAccent,
                        Colors.deepOrange,
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                    image: const DecorationImage(
                      image: AssetImage("assets/img_1.png"),
                      alignment: Alignment.topRight,
                    ),
                  ),
                  child: InkWell(
                    onTap: () async {
                      // final granted = await askPermission();
                      // if (granted) {
                      final url = "https://www.makhana.com/r/LwQ";
                      launchUrl(Uri.parse(url));
                      // }
                    },
                    child: const Center(
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Text(
                            "Factory Management",
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 185,
                  width: double.maxFinite,
                  margin: const EdgeInsets.symmetric(
                    vertical: 8,
                  ),
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: const LinearGradient(
                      colors: [
                        Colors.orangeAccent,
                        Colors.deepOrange,
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      final url = "https://www.makhana.com/r/hwm";
                      launchUrl(Uri.parse(url));
                    },
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset(
                                  "assets/todo.png",
                                  height: 96,
                                ),
                                SizedBox(width: 12),
                              ],
                            ),
                            Spacer(),
                            Row(
                              children: const [
                                Text(
                                  "Attendance Gate",
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 185,
                  width: double.maxFinite,
                  margin: const EdgeInsets.symmetric(
                    vertical: 8,
                  ),
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: const LinearGradient(
                      colors: [
                        Colors.orangeAccent,
                        Colors.deepOrange,
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                  child: InkWell(
                    onTap: () async {
                      // final granted = await askPermission();
                      // if (granted) {
                      final url = "https://www.makhana.com/r/h1N";
                      launchUrl(
                        Uri.parse(url),
                        webViewConfiguration: WebViewConfiguration(),
                        mode: LaunchMode.externalApplication,
                      );
                      // }
                    },
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(16, 4, 6, 16),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset(
                                  "assets/bell.png",
                                  color: Color(0x73FFFFFF),
                                  height: 127,
                                ),
                                SizedBox(width: 12),
                              ],
                            ),
                            Spacer(),
                            Row(
                              children: const [
                                Text(
                                  "Makhana Survey",
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

