import 'dart:html';

import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  _MyprofilescreenState createState() => _MyprofilescreenState();
}

class _MyprofilescreenState extends State<MyProfileScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // return StreamBuilder<UsersRecord>(
    //   stream: UsersRecord.getDocument(currentUserReference),
    //   builder: (context, snapshot) {
    //     // Customize what your widget looks like when it's loading.
    //     if (!snapshot.hasData) {
    //       return const Center(
    //         child: SizedBox(
    //           width: 50,
    //           height: 50,
    //           child: CircularProgressIndicator(
    //             color: Color(0xFF4B39EF),
    //           ),
    //         ),
    //       );
    //     }
    //     final myPROFILEUsersRecord = snapshot.data;
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF4B39EF),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              color: const Color(0xFF4B39EF),
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: Image.asset(
                  'assets/images/wavesMiddle@3x.png',
                ).image,
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/quiztorylogo.png',
                        width: 300,
                        height: 120,
                        fit: BoxFit.cover,
                      )
                    ],
                  ),
                  Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProfileAvatar(
//                  'https://avatars0.githubusercontent.com/u/8264639?s=460&v=4',
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRWtMDksH9GzFdMinyAkGbtLJNx6xynLETTNN5akjxirL3QD5Rj',
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const MyProfileScreen()));
                          },
                          placeHolder: (context, url) => const SizedBox(
                            width: 50,
                            height: 50,
                            child: CircularProgressIndicator(),
                          ),
                          radius: 90,
                          backgroundColor: Colors.transparent,
                          borderWidth: 10,
                          initialsText: const Text(
                            "AD",
                            style: TextStyle(fontSize: 40, color: Colors.white),
                          ),
                          borderColor: Colors.red,
                          imageFit: BoxFit.fitHeight,
                          elevation: 5.0,
                          cacheImage: true,
                          showInitialTextAbovePicture: false,
                        ),
                      ]),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(mainAxisSize: MainAxisSize.max, children: [
                        Builder(builder: (context) {
                          return const Text(
                            '[Display Name]',
                            style: TextStyle(
                              fontFamily: 'Lexend Deca',
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          );
                        }),
                        const Text(
                          '[Email]',
                          style: TextStyle(
                            fontFamily: 'Lexend Deca',
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ])
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: 400,
                            height: 350,
                            decoration: BoxDecoration(
                              color: const Color(0xFF4B39EF),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 10,
                                  color: Color(0xFF1F2225),
                                  offset: Offset(10, 10),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.white,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        'SETTINGS',
                                        style: TextStyle(
                                          fontFamily: 'Lexend Deca',
                                          fontSize: 26,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      5, 10, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Icon(
                                        Icons.person_sharp,
                                        color: Colors.white,
                                        size: 24,
                                      ),
                                      Text(
                                        'ACCOUNT',
                                        style: TextStyle(
                                          fontFamily: 'Lexend Deca',
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      OutlinedButton(
                                        onPressed: () {},
                                        child: const Text(
                                          'Edit Profile',
                                          style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: 25,
                                              color: Colors.white),
                                        ),
                                        style: OutlinedButton.styleFrom(
                                          primary: Colors.lightBlue,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 70, vertical: 20),
                                          side: const BorderSide(
                                              width: 1.0, color: Colors.white),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      OutlinedButton(
                                        onPressed: () {},
                                        child: const Text(
                                          'Change Password',
                                          style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: 25,
                                              color: Colors.white),
                                        ),
                                        style: OutlinedButton.styleFrom(
                                          primary: Colors.lightBlue,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 70, vertical: 20),
                                          side: const BorderSide(
                                              width: 1.0, color: Colors.white),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      OutlinedButton(
                                        onPressed: () {},
                                        child: const Text(
                                          'Change Email',
                                          style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: 25,
                                              color: Colors.white),
                                        ),
                                        style: OutlinedButton.styleFrom(
                                          primary: Colors.lightBlue,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 70, vertical: 20),
                                          side: const BorderSide(
                                              width: 1.0, color: Colors.white),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      OutlinedButton(
                                        onPressed: () {},
                                        child: const Text(
                                          'Log Out',
                                          style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: 25,
                                              color: Colors.white),
                                        ),
                                        style: OutlinedButton.styleFrom(
                                          primary: Colors.lightBlue,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 70, vertical: 20),
                                          side: const BorderSide(
                                              width: 1.0, color: Colors.white),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'DEVELOPED BY:',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/0402d5b772f14be394dcd6441b98132f.png',
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      )
                    ],
                  )
                ],
              ),
            )));
  }
}
