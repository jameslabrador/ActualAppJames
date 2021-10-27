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
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('helo world',
                            style:
                                TextStyle(fontFamily: 'Roboto', fontSize: 15))
                      ]),
                )
              ],
            ),
          )),
    );
  }
}
