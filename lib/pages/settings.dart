import 'package:actualapp/pages/faq_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

// ignore: camel_case_types
class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<settings> {
  late bool pushnotifValue;
  late double sliderValue1;
  late double sliderValue2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: const Color(0xFF4B39EF),
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.chevron_left_rounded,
            color: Colors.white,
            size: 32,
          ),
        ),
        title: const Text(
          'Settings',
          style: TextStyle(
            fontFamily: 'Lexend Deca',
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: const Color(0xFF090F13),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
            child: SwitchListTile.adaptive(
              value: pushnotifValue = false,
              onChanged: (newValue) =>
                  setState(() => pushnotifValue = newValue),
              title: const Text(
                'Push Notifications',
                style: TextStyle(
                  fontFamily: 'Lexend Deca',
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                'Receive Push notifications from our application on a semi regular basis.',
                style: TextStyle(
                  fontFamily: 'Lexend Deca',
                  color: Color(0xFF8B97A2),
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              activeColor: const Color(0xFF4B39EF),
              activeTrackColor: const Color(0xFF3B2DB6),
              dense: false,
              controlAffinity: ListTileControlAffinity.trailing,
              contentPadding:
                  const EdgeInsetsDirectional.fromSTEB(24, 12, 24, 12),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                  size: 30,
                ),
                const Text(
                  'Sounds',
                  style: TextStyle(
                    fontFamily: 'Lexend Deca',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Slider(
                  activeColor: const Color(0xFF4B39EF),
                  inactiveColor: const Color(0xFF9E9E9E),
                  min: 0,
                  max: 10,
                  value: sliderValue1 = 0,
                  onChanged: (newValue) {
                    setState(() => sliderValue1 = newValue);
                  },
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(
                  Icons.music_note,
                  color: Colors.white,
                  size: 30,
                ),
                const Text(
                  'Music  ',
                  style: TextStyle(
                    fontFamily: 'Lexend Deca',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Slider(
                  activeColor: const Color(0xFF4B39EF),
                  inactiveColor: const Color(0xFF9E9E9E),
                  min: 0,
                  max: 10,
                  value: sliderValue2 = 0,
                  onChanged: (newValue) {
                    setState(() => sliderValue2 = newValue);
                  },
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        duration: const Duration(milliseconds: 500),
                        reverseDuration: const Duration(milliseconds: 500),
                        child: const FaQsPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'Help/FAQ',
                    style: TextStyle(
                      fontFamily: 'Lexend Deca',
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
