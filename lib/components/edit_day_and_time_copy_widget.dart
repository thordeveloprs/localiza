import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditDayAndTimeCopyWidget extends StatefulWidget {
  const EditDayAndTimeCopyWidget({Key? key}) : super(key: key);

  @override
  _EditDayAndTimeCopyWidgetState createState() =>
      _EditDayAndTimeCopyWidgetState();
}

class _EditDayAndTimeCopyWidgetState extends State<EditDayAndTimeCopyWidget> {
  TextEditingController? textController1;
  TextEditingController? textController2;
  bool? checkboxValue1;
  bool? checkboxValue2;

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    textController1?.dispose();
    textController2?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0x00283636),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.settings_outlined,
                                    color: Colors.transparent,
                                    size: 24,
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'ihzyl4mv' /* Select Day & Time */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Roboto',
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      Navigator.pop(context);
                                    },
                                    child: Image.network(
                                      'http://cdn.onlinewebfonts.com/svg/img_255487.png',
                                      width: 18,
                                      height: 18,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () async {
                                      if (FFAppState().isSunday) {
                                        FFAppState().update(() {
                                          FFAppState().isSunday = false;
                                        });
                                      } else {
                                        FFAppState().update(() {
                                          FFAppState().isSunday = true;
                                        });
                                      }
                                    },
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 1,
                                      shape: const CircleBorder(),
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: FFAppState().isSunday
                                              ? Color(0xFFE8F0FE)
                                              : Color(0xFFE8E9E9),
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Color(0xFFC3C3C3),
                                            width: 1,
                                          ),
                                        ),
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'cwq1rox8' /* S */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Roboto',
                                                color: FFAppState().isSunday
                                                    ? Color(0xFF256FD5)
                                                    : Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      if (FFAppState().isMonday) {
                                        FFAppState().update(() {
                                          FFAppState().isMonday = false;
                                        });
                                      } else {
                                        FFAppState().update(() {
                                          FFAppState().isMonday = true;
                                        });
                                      }
                                    },
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 1,
                                      shape: const CircleBorder(),
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: FFAppState().isMonday
                                              ? Color(0xFFE8F0FE)
                                              : Color(0xFFE8E9E9),
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Color(0xFFC3C3C3),
                                            width: 1,
                                          ),
                                        ),
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '2gxw6i0c' /* M */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Roboto',
                                                color: FFAppState().isMonday
                                                    ? Color(0xFF256FD5)
                                                    : Colors.black,
                                                fontSize: 14,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      if (FFAppState().isTuesday) {
                                        FFAppState().update(() {
                                          FFAppState().isTuesday = false;
                                        });
                                      } else {
                                        FFAppState().update(() {
                                          FFAppState().isTuesday = true;
                                        });
                                      }
                                    },
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 1,
                                      shape: const CircleBorder(),
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: FFAppState().isTuesday
                                              ? Color(0xFFE8F0FE)
                                              : Color(0xFFE8E9E9),
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Color(0xFFC3C3C3),
                                            width: 1,
                                          ),
                                        ),
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '4pg2q9u4' /* T */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Roboto',
                                                color: FFAppState().isTuesday
                                                    ? Color(0xFF256FD5)
                                                    : Colors.black,
                                                fontSize: 14,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      if (FFAppState().isWednesday) {
                                        FFAppState().update(() {
                                          FFAppState().isWednesday = false;
                                        });
                                      } else {
                                        FFAppState().update(() {
                                          FFAppState().isWednesday = true;
                                        });
                                      }
                                    },
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 1,
                                      shape: const CircleBorder(),
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: FFAppState().isWednesday
                                              ? Color(0xFFE8F0FE)
                                              : Color(0xFFE8E9E9),
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Color(0xFFC3C3C3),
                                            width: 1,
                                          ),
                                        ),
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'mpc933gz' /* W */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Roboto',
                                                color: FFAppState().isWednesday
                                                    ? Color(0xFF256FD5)
                                                    : Colors.black,
                                                fontSize: 14,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      if (FFAppState().isThursday) {
                                        FFAppState().update(() {
                                          FFAppState().isThursday = false;
                                        });
                                      } else {
                                        FFAppState().update(() {
                                          FFAppState().isThursday = true;
                                        });
                                      }
                                    },
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 1,
                                      shape: const CircleBorder(),
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: FFAppState().isThursday
                                              ? Color(0xFFE8F0FE)
                                              : Color(0xFFE8E9E9),
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Color(0xFFC3C3C3),
                                            width: 1,
                                          ),
                                        ),
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'cnhk7lfk' /* T */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Roboto',
                                                color: FFAppState().isThursday
                                                    ? Color(0xFF256FD5)
                                                    : Colors.black,
                                                fontSize: 14,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      if (FFAppState().isFriday) {
                                        FFAppState().update(() {
                                          FFAppState().isFriday = false;
                                        });
                                      } else {
                                        FFAppState().update(() {
                                          FFAppState().isFriday = true;
                                        });
                                      }
                                    },
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 1,
                                      shape: const CircleBorder(),
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: FFAppState().isFriday
                                              ? Color(0xFFE8F0FE)
                                              : Color(0xFFE8E9E9),
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Color(0xFFC3C3C3),
                                            width: 1,
                                          ),
                                        ),
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'l1x4ffyb' /* F */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Roboto',
                                                color: FFAppState().isFriday
                                                    ? Color(0xFF256FD5)
                                                    : Colors.black,
                                                fontSize: 14,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      if (FFAppState().isSaturday) {
                                        FFAppState().update(() {
                                          FFAppState().isSaturday = false;
                                        });
                                      } else {
                                        FFAppState().update(() {
                                          FFAppState().isSaturday = true;
                                        });
                                      }
                                    },
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 1,
                                      shape: const CircleBorder(),
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: FFAppState().isSaturday
                                              ? Color(0xFFE8F0FE)
                                              : Color(0xFFE8E9E9),
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Color(0xFFC3C3C3),
                                            width: 1,
                                          ),
                                        ),
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '770ap8lz' /* S */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Roboto',
                                                color: FFAppState().isSaturday
                                                    ? Color(0xFF256FD5)
                                                    : Colors.black,
                                                fontSize: 14,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 25, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 15, 0),
                                          child: Container(
                                            width: 20,
                                            height: 20,
                                            decoration: BoxDecoration(
                                              color: Color(0x00283636),
                                              border: Border.all(
                                                color: Colors.black,
                                              ),
                                            ),
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Theme(
                                              data: ThemeData(
                                                checkboxTheme:
                                                    CheckboxThemeData(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0),
                                                  ),
                                                ),
                                                unselectedWidgetColor:
                                                    Color(0xFFF5F5F5),
                                              ),
                                              child: Checkbox(
                                                value: checkboxValue1 ??= false,
                                                onChanged: (newValue) async {
                                                  setState(() =>
                                                      checkboxValue1 =
                                                          newValue!);
                                                },
                                                activeColor: Color(0xFF1A73E8),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'zgldkz2l' /* Open 24 hours */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Roboto',
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 15, 0),
                                        child: Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                            color: Color(0x00283636),
                                            border: Border.all(
                                              color: Colors.black,
                                            ),
                                          ),
                                          alignment: AlignmentDirectional(0, 0),
                                          child: Theme(
                                            data: ThemeData(
                                              checkboxTheme: CheckboxThemeData(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(0),
                                                ),
                                              ),
                                              unselectedWidgetColor:
                                                  Color(0xFFF5F5F5),
                                            ),
                                            child: Checkbox(
                                              value: checkboxValue2 ??= false,
                                              onChanged: (newValue) async {
                                                setState(() =>
                                                    checkboxValue2 = newValue!);
                                              },
                                              activeColor: Color(0xFF1A73E8),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '1fw7blpg' /* Closed */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Roboto',
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height * 0.2,
                              decoration: BoxDecoration(
                                color: Color(0x00283636),
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 15),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 10, 0),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.5,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                ),
                                                child: TextFormField(
                                                  controller: textController1,
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'nspt2hys' /* Open Time */,
                                                    ),
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color:
                                                              Color(0xFF9C9C9C),
                                                        ),
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyText2,
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF565656),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF565656),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        fontSize: 16,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: TextFormField(
                                                controller: textController2,
                                                autofocus: true,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'so31otg2' /* Close Time */,
                                                  ),
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            Color(0xFF9C9C9C),
                                                      ),
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyText2,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xFF565656),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xFF565656),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          fontSize: 16,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15, 0, 0, 0),
                                            child: Image.asset(
                                              'assets/images/cancel2.JPG',
                                              width: 30,
                                              height: 30,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '2qx51tp9' /* Add hours */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: Color(0xFF1A73E8),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 30, 30),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Color(0x009C9C9C),
                              ),
                            ),
                            alignment: AlignmentDirectional(0, 0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'gw9jetxz' /* Cancel */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: Color(0xFF1B74E8),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Color(0x009C9C9C),
                            ),
                          ),
                          alignment: AlignmentDirectional(0, 0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'oeixcgmk' /* Save */,
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Roboto',
                                      color: Color(0xFF1B74E8),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
