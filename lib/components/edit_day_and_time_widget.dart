import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../custom_code/actions/index.dart' as actions;
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditDayAndTimeWidget extends StatefulWidget {
  const EditDayAndTimeWidget({Key? key}) : super(key: key);

  @override
  _EditDayAndTimeWidgetState createState() => _EditDayAndTimeWidgetState();
}

class _EditDayAndTimeWidgetState extends State<EditDayAndTimeWidget> {
  DateTime? datePicked1;
  List<dynamic>? newList;
  DateTime? datePicked2;
  List<dynamic>? newList1;
  List<TimeStruct>? result;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
            height: MediaQuery.of(context).size.height * 0.6,
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
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.settings_outlined,
                                  color: Colors.transparent,
                                  size: 24,
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '46dj54ps' /* Select Day & Time */,
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
                                    FFAppState().update(() {
                                      FFAppState().dayTimeList1 =
                                          FFAppState().emptyJsonList.toList();
                                    });
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                          'fvwelz29' /* S */,
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
                                          'puk0jjni' /* M */,
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
                                          'w54n37ad' /* T */,
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
                                          'k2zyzjy2' /* W */,
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
                                          'pd43co00' /* T */,
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
                                          'v70hov9u' /* F */,
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
                                          'jnc5l6e5' /* S */,
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 15, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if (FFAppState().isOpen24Hours)
                                              InkWell(
                                                onTap: () async {
                                                  if (FFAppState()
                                                      .isOpen24Hours) {
                                                    FFAppState().update(() {
                                                      FFAppState()
                                                              .isOpen24Hours =
                                                          false;
                                                    });
                                                  } else {
                                                    FFAppState().update(() {
                                                      FFAppState()
                                                          .isOpen24Hours = true;
                                                      FFAppState().isClosed =
                                                          false;
                                                    });
                                                  }
                                                },
                                                child: Icon(
                                                  Icons.check_box,
                                                  color: Color(0xFF1B74E8),
                                                  size: 25,
                                                ),
                                              ),
                                            if (!FFAppState().isOpen24Hours)
                                              InkWell(
                                                onTap: () async {
                                                  if (FFAppState()
                                                      .isOpen24Hours) {
                                                    FFAppState().update(() {
                                                      FFAppState()
                                                              .isOpen24Hours =
                                                          false;
                                                    });
                                                  } else {
                                                    FFAppState().update(() {
                                                      FFAppState()
                                                          .isOpen24Hours = true;
                                                      FFAppState().isClosed =
                                                          false;
                                                    });
                                                  }
                                                },
                                                child: Icon(
                                                  Icons.check_box_outline_blank,
                                                  color: Color(0xFF6C6C6C),
                                                  size: 25,
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'n4kmzfne' /* Open 24 hours */,
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
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if (FFAppState().isClosed)
                                            InkWell(
                                              onTap: () async {
                                                FFAppState().update(() {
                                                  FFAppState().isClosed = false;
                                                });
                                              },
                                              child: Icon(
                                                Icons.check_box,
                                                color: Color(0xFF1B74E8),
                                                size: 25,
                                              ),
                                            ),
                                          if (!FFAppState().isClosed)
                                            InkWell(
                                              onTap: () async {
                                                FFAppState().update(() {
                                                  FFAppState().isClosed = true;
                                                  FFAppState().isOpen24Hours =
                                                      false;
                                                });
                                              },
                                              child: Icon(
                                                Icons.check_box_outline_blank,
                                                color: Color(0xFF6C6C6C),
                                                size: 25,
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'dyvjgxik' /* Closed */,
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
                          if (!(FFAppState().isOpen24Hours ||
                              FFAppState().isClosed))
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: double.infinity,
                                  constraints: BoxConstraints(
                                    maxHeight:
                                        MediaQuery.of(context).size.height *
                                            0.2,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0x00283636),
                                  ),
                                  child: Builder(
                                    builder: (context) {
                                      final dtList =
                                          FFAppState().dayTimeList1.toList();
                                      return SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: List.generate(dtList.length,
                                              (dtListIndex) {
                                            final dtListItem =
                                                dtList[dtListIndex];
                                            return Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 15),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    flex: 2,
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 10, 0),
                                                      child: InkWell(
                                                        onTap: () async {
                                                          final _datePicked1Time =
                                                              await showTimePicker(
                                                            context: context,
                                                            initialTime: TimeOfDay
                                                                .fromDateTime(
                                                                    getCurrentTimestamp),
                                                          );
                                                          if (_datePicked1Time !=
                                                              null) {
                                                            setState(
                                                              () =>
                                                                  datePicked1 =
                                                                      DateTime(
                                                                getCurrentTimestamp
                                                                    .year,
                                                                getCurrentTimestamp
                                                                    .month,
                                                                getCurrentTimestamp
                                                                    .day,
                                                                _datePicked1Time
                                                                    .hour,
                                                                _datePicked1Time
                                                                    .minute,
                                                              ),
                                                            );
                                                          }
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState()
                                                                    .timePicker =
                                                                dateTimeFormat(
                                                              'jms',
                                                              datePicked1,
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            );
                                                          });
                                                          newList = await actions
                                                              .getNewDayTimeList(
                                                            FFAppState()
                                                                .dayTimeList1
                                                                .toList(),
                                                            dtListIndex,
                                                            FFAppState()
                                                                .timePicker,
                                                            'openTime',
                                                          );
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState()
                                                                    .dayTimeList1 =
                                                                newList!
                                                                    .toList();
                                                          });

                                                          setState(() {});
                                                        },
                                                        child: Container(
                                                          width: 100,
                                                          height: 50,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0x00283636),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            border: Border.all(
                                                              color:
                                                                  Colors.black,
                                                              width: 1,
                                                            ),
                                                          ),
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -0.9, 0),
                                                          child: Text(
                                                            getJsonField(
                                                              dtListItem,
                                                              r'''$.openTime''',
                                                            ).toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 2,
                                                    child: InkWell(
                                                      onTap: () async {
                                                        final _datePicked2Time =
                                                            await showTimePicker(
                                                          context: context,
                                                          initialTime: TimeOfDay
                                                              .fromDateTime(
                                                                  getCurrentTimestamp),
                                                        );
                                                        if (_datePicked2Time !=
                                                            null) {
                                                          setState(
                                                            () => datePicked2 =
                                                                DateTime(
                                                              getCurrentTimestamp
                                                                  .year,
                                                              getCurrentTimestamp
                                                                  .month,
                                                              getCurrentTimestamp
                                                                  .day,
                                                              _datePicked2Time
                                                                  .hour,
                                                              _datePicked2Time
                                                                  .minute,
                                                            ),
                                                          );
                                                        }
                                                        FFAppState().update(() {
                                                          FFAppState()
                                                                  .timePicker =
                                                              dateTimeFormat(
                                                            'jms',
                                                            datePicked2,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          );
                                                        });
                                                        newList1 = await actions
                                                            .getNewDayTimeList(
                                                          FFAppState()
                                                              .dayTimeList1
                                                              .toList(),
                                                          dtListIndex,
                                                          FFAppState()
                                                              .timePicker,
                                                          'endTime',
                                                        );
                                                        FFAppState().update(() {
                                                          FFAppState()
                                                                  .dayTimeList1 =
                                                              newList1!
                                                                  .toList();
                                                        });

                                                        setState(() {});
                                                      },
                                                      child: Container(
                                                        width: 100,
                                                        height: 50,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x00283636),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          border: Border.all(
                                                            color: Colors.black,
                                                            width: 1,
                                                          ),
                                                        ),
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -0.9, 0),
                                                        child: Text(
                                                          getJsonField(
                                                            dtListItem,
                                                            r'''$.endTime''',
                                                          ).toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                15, 0, 0, 0),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        FFAppState().update(() {
                                                          FFAppState()
                                                              .removeFromDayTimeList1(
                                                                  dtListItem);
                                                        });
                                                        if (FFAppState()
                                                                .dayTimeList
                                                                .length ==
                                                            0) {
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState()
                                                                    .isClosed =
                                                                true;
                                                          });
                                                        }
                                                      },
                                                      child: Image.network(
                                                        getJsonField(
                                                          dtListItem,
                                                          r'''$.img''',
                                                        ),
                                                        width: 18,
                                                        height: 18,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          }),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    InkWell(
                                      onTap: () async {
                                        FFAppState().update(() {
                                          FFAppState().addToDayTimeList1(
                                              functions.getJson());
                                        });
                                      },
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'u0k2a3kg' /* Add hours */,
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
                                    ),
                                  ],
                                ),
                              ],
                            ),
                        ],
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
                        child: InkWell(
                          onTap: () async {
                            FFAppState().update(() {
                              FFAppState().dayTimeList1 =
                                  FFAppState().emptyJsonList.toList();
                            });
                            Navigator.pop(context);
                          },
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
                                  '62lfqku2' /* Cancel */,
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
                      ),
                      InkWell(
                        onTap: () async {
                          result = await actions.getTimeDetails(
                            FFAppState().dayTimeList1.toList(),
                          );

                          setState(() {});
                        },
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
                                'n73jj74d' /* Save */,
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
