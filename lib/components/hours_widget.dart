import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/edit_day_and_time_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HoursWidget extends StatefulWidget {
  const HoursWidget({
    Key? key,
    this.workingHoursRef,
  }) : super(key: key);

  final DocumentReference? workingHoursRef;

  @override
  _HoursWidgetState createState() => _HoursWidgetState();
}

class _HoursWidgetState extends State<HoursWidget> {
  List<String>? newDaysList10;
  List<String>? newDaysList2;
  List<String>? newDaysList3;
  List<String>? newDaysList4;
  List<String>? newDaysList5;
  List<String>? newDaysList6;
  List<String>? newDaysList7;
  List<String>? newDaysList1;
  List<String>? newDaysList8;
  List<String>? newDaysList9;
  List<TimeStruct>? friData;
  List<TimeStruct>? monData;
  List<TimeStruct>? tueData;
  List<TimeStruct>? wedData;
  List<TimeStruct>? thuData;
  List<TimeStruct>? satData;
  List<TimeStruct>? sunData;

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
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: double.infinity,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Color(0x00283636),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.black,
                                  size: 24,
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 2),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'va7oib4h' /* Hours */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Open Sans',
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'dze4lwid' /* Burger King */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color: Color(0xFF919191),
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Image.network(
                            'http://cdn.onlinewebfonts.com/svg/img_255487.png',
                            width: 17,
                            height: 17,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    elevation: 2,
                    child: Container(
                      width: double.infinity,
                      height: 2,
                      decoration: BoxDecoration(
                        color: Color(0xFFCFCFCF),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 15, 0, 20),
                                child: Container(
                                  width: double.infinity,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Color(0xFF9F9F9F),
                                      width: 1,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 20, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 15, 0),
                                                child: Icon(
                                                  Icons.edit_location_outlined,
                                                  color: Color(0xFF424242),
                                                  size: 28,
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  width: 100,
                                                  height: 100,
                                                  decoration: BoxDecoration(
                                                    color: Color(0x00283636),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'peoic4zu' /* Mark as temporarily or permane... */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  color: Color(
                                                                      0xFF424242),
                                                                  fontSize: 18,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 0, 0, 0),
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color(0xFF424242),
                                            size: 24,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 10, 20),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'egrhc39i' /* Sunday */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            Color(0xFF424242),
                                                        fontSize: 18,
                                                      ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Builder(
                                                  builder: (context) {
                                                    final sunTime =
                                                        getJsonField(
                                                      FFAppState().workingJson,
                                                      r'''$.sun''',
                                                    ).toList();
                                                    return Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: List.generate(
                                                          sunTime.length,
                                                          (sunTimeIndex) {
                                                        final sunTimeItem =
                                                            sunTime[
                                                                sunTimeIndex];
                                                        return Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 10, 0),
                                                          child: Text(
                                                            '${getJsonField(
                                                              sunTimeItem,
                                                              r'''$.openTime''',
                                                            ).toString()}-${getJsonField(
                                                              sunTimeItem,
                                                              r'''$.endTime''',
                                                            ).toString()}',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  color: Color(
                                                                      0xFF424242),
                                                                  fontSize: 18,
                                                                ),
                                                          ),
                                                        );
                                                      }),
                                                    );
                                                  },
                                                ),
                                                InkWell(
                                                  onTap: () async {
                                                    FFAppState().update(() {
                                                      FFAppState().isSunday =
                                                          true;
                                                      FFAppState().isMonday =
                                                          false;
                                                      FFAppState().isTuesday =
                                                          false;
                                                      FFAppState().isWednesday =
                                                          false;
                                                      FFAppState().isThursday =
                                                          false;
                                                      FFAppState().isFriday =
                                                          false;
                                                      FFAppState().isSaturday =
                                                          false;
                                                    });
                                                    newDaysList10 = await actions
                                                        .getSelectedDaysList(
                                                      FFAppState().isSunday,
                                                      FFAppState().isMonday,
                                                      FFAppState().isTuesday,
                                                      FFAppState().isWednesday,
                                                      FFAppState().isThursday,
                                                      FFAppState().isFriday,
                                                      FFAppState().isSaturday,
                                                    );
                                                    FFAppState().update(() {
                                                      FFAppState().daysList =
                                                          newDaysList10!
                                                              .toList();
                                                      FFAppState()
                                                              .dayTimeList1 =
                                                          getJsonField(
                                                        FFAppState()
                                                            .workingJson,
                                                        r'''$.sun''',
                                                      ).toList();
                                                    });
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      enableDrag: false,
                                                      context: context,
                                                      builder: (context) {
                                                        return Padding(
                                                          padding:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .viewInsets,
                                                          child: Container(
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                1,
                                                            child:
                                                                EditDayAndTimeWidget(),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        setState(() {}));

                                                    setState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.edit_outlined,
                                                    color: Color(0xFF424242),
                                                    size: 24,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 10, 20),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '7oi9k9c8' /* Monday */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            Color(0xFF424242),
                                                        fontSize: 18,
                                                      ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Builder(
                                                  builder: (context) {
                                                    final monTime =
                                                        getJsonField(
                                                      FFAppState().workingJson,
                                                      r'''$.mon''',
                                                    ).toList();
                                                    return Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: List.generate(
                                                          monTime.length,
                                                          (monTimeIndex) {
                                                        final monTimeItem =
                                                            monTime[
                                                                monTimeIndex];
                                                        return Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 10, 0),
                                                          child: Text(
                                                            '${getJsonField(
                                                              monTimeItem,
                                                              r'''$.openTime''',
                                                            ).toString()}-${getJsonField(
                                                              monTimeItem,
                                                              r'''$.endTime''',
                                                            ).toString()}',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  color: Color(
                                                                      0xFF424242),
                                                                  fontSize: 18,
                                                                ),
                                                          ),
                                                        );
                                                      }),
                                                    );
                                                  },
                                                ),
                                                InkWell(
                                                  onTap: () async {
                                                    FFAppState().update(() {
                                                      FFAppState().isSunday =
                                                          false;
                                                      FFAppState().isMonday =
                                                          true;
                                                      FFAppState().isTuesday =
                                                          false;
                                                      FFAppState().isWednesday =
                                                          false;
                                                      FFAppState().isThursday =
                                                          false;
                                                      FFAppState().isFriday =
                                                          false;
                                                      FFAppState().isSaturday =
                                                          false;
                                                    });
                                                    newDaysList2 = await actions
                                                        .getSelectedDaysList(
                                                      FFAppState().isSunday,
                                                      FFAppState().isMonday,
                                                      FFAppState().isTuesday,
                                                      FFAppState().isWednesday,
                                                      FFAppState().isThursday,
                                                      FFAppState().isFriday,
                                                      FFAppState().isSaturday,
                                                    );
                                                    FFAppState().update(() {
                                                      FFAppState().daysList =
                                                          newDaysList2!
                                                              .toList();
                                                      FFAppState()
                                                              .dayTimeList1 =
                                                          getJsonField(
                                                        FFAppState()
                                                            .workingJson,
                                                        r'''$.mon''',
                                                      ).toList();
                                                    });
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      enableDrag: false,
                                                      context: context,
                                                      builder: (context) {
                                                        return Padding(
                                                          padding:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .viewInsets,
                                                          child: Container(
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                1,
                                                            child:
                                                                EditDayAndTimeWidget(),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        setState(() {}));

                                                    setState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.edit_outlined,
                                                    color: Color(0xFF424242),
                                                    size: 24,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 10, 20),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'k6ij795g' /* Tuesday */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            Color(0xFF424242),
                                                        fontSize: 18,
                                                      ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Builder(
                                                  builder: (context) {
                                                    final tueTime =
                                                        getJsonField(
                                                      FFAppState().workingJson,
                                                      r'''$.tues''',
                                                    ).toList();
                                                    return Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: List.generate(
                                                          tueTime.length,
                                                          (tueTimeIndex) {
                                                        final tueTimeItem =
                                                            tueTime[
                                                                tueTimeIndex];
                                                        return Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 10, 0),
                                                          child: Text(
                                                            '${getJsonField(
                                                              tueTimeItem,
                                                              r'''$.openTime''',
                                                            ).toString()}-${getJsonField(
                                                              tueTimeItem,
                                                              r'''$.endTime''',
                                                            ).toString()}',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  color: Color(
                                                                      0xFF424242),
                                                                  fontSize: 18,
                                                                ),
                                                          ),
                                                        );
                                                      }),
                                                    );
                                                  },
                                                ),
                                                InkWell(
                                                  onTap: () async {
                                                    FFAppState().update(() {
                                                      FFAppState().isSunday =
                                                          false;
                                                      FFAppState().isMonday =
                                                          false;
                                                      FFAppState().isTuesday =
                                                          true;
                                                      FFAppState().isWednesday =
                                                          false;
                                                      FFAppState().isThursday =
                                                          false;
                                                      FFAppState().isFriday =
                                                          false;
                                                      FFAppState().isSaturday =
                                                          false;
                                                    });
                                                    newDaysList3 = await actions
                                                        .getSelectedDaysList(
                                                      FFAppState().isSunday,
                                                      FFAppState().isMonday,
                                                      FFAppState().isTuesday,
                                                      FFAppState().isWednesday,
                                                      FFAppState().isThursday,
                                                      FFAppState().isFriday,
                                                      FFAppState().isSaturday,
                                                    );
                                                    FFAppState().update(() {
                                                      FFAppState().daysList =
                                                          newDaysList3!
                                                              .toList();
                                                      FFAppState()
                                                              .dayTimeList1 =
                                                          getJsonField(
                                                        FFAppState()
                                                            .workingJson,
                                                        r'''$.tues''',
                                                      ).toList();
                                                    });
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      enableDrag: false,
                                                      context: context,
                                                      builder: (context) {
                                                        return Padding(
                                                          padding:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .viewInsets,
                                                          child: Container(
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                1,
                                                            child:
                                                                EditDayAndTimeWidget(),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        setState(() {}));

                                                    setState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.edit_outlined,
                                                    color: Color(0xFF424242),
                                                    size: 24,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 10, 20),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '93v2y4c5' /* Wednesday */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            Color(0xFF424242),
                                                        fontSize: 18,
                                                      ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Builder(
                                                  builder: (context) {
                                                    final wedTime =
                                                        getJsonField(
                                                      FFAppState().workingJson,
                                                      r'''$.weds''',
                                                    ).toList();
                                                    return Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: List.generate(
                                                          wedTime.length,
                                                          (wedTimeIndex) {
                                                        final wedTimeItem =
                                                            wedTime[
                                                                wedTimeIndex];
                                                        return Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 10, 0),
                                                          child: Text(
                                                            '${getJsonField(
                                                              wedTimeItem,
                                                              r'''$.openTime''',
                                                            ).toString()}-${getJsonField(
                                                              wedTimeItem,
                                                              r'''$.endTime''',
                                                            ).toString()}',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  color: Color(
                                                                      0xFF424242),
                                                                  fontSize: 18,
                                                                ),
                                                          ),
                                                        );
                                                      }),
                                                    );
                                                  },
                                                ),
                                                InkWell(
                                                  onTap: () async {
                                                    FFAppState().update(() {
                                                      FFAppState().isSunday =
                                                          false;
                                                      FFAppState().isMonday =
                                                          false;
                                                      FFAppState().isTuesday =
                                                          false;
                                                      FFAppState().isWednesday =
                                                          true;
                                                      FFAppState().isThursday =
                                                          false;
                                                      FFAppState().isFriday =
                                                          false;
                                                      FFAppState().isSaturday =
                                                          false;
                                                    });
                                                    newDaysList4 = await actions
                                                        .getSelectedDaysList(
                                                      FFAppState().isSunday,
                                                      FFAppState().isMonday,
                                                      FFAppState().isTuesday,
                                                      FFAppState().isWednesday,
                                                      FFAppState().isThursday,
                                                      FFAppState().isFriday,
                                                      FFAppState().isSaturday,
                                                    );
                                                    FFAppState().update(() {
                                                      FFAppState().daysList =
                                                          newDaysList4!
                                                              .toList();
                                                      FFAppState()
                                                              .dayTimeList1 =
                                                          getJsonField(
                                                        FFAppState()
                                                            .workingJson,
                                                        r'''$.weds''',
                                                      ).toList();
                                                    });
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      enableDrag: false,
                                                      context: context,
                                                      builder: (context) {
                                                        return Padding(
                                                          padding:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .viewInsets,
                                                          child: Container(
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                1,
                                                            child:
                                                                EditDayAndTimeWidget(),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        setState(() {}));

                                                    setState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.edit_outlined,
                                                    color: Color(0xFF424242),
                                                    size: 24,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 10, 20),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'yd3aa5fo' /* Thursday */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            Color(0xFF424242),
                                                        fontSize: 18,
                                                      ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Builder(
                                                  builder: (context) {
                                                    final thuTime =
                                                        getJsonField(
                                                      FFAppState().workingJson,
                                                      r'''$.thus''',
                                                    ).toList();
                                                    return Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: List.generate(
                                                          thuTime.length,
                                                          (thuTimeIndex) {
                                                        final thuTimeItem =
                                                            thuTime[
                                                                thuTimeIndex];
                                                        return Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 10, 0),
                                                          child: Text(
                                                            '${getJsonField(
                                                              thuTimeItem,
                                                              r'''$.openTime''',
                                                            ).toString()}-${getJsonField(
                                                              thuTimeItem,
                                                              r'''$.endTime''',
                                                            ).toString()}',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  color: Color(
                                                                      0xFF424242),
                                                                  fontSize: 18,
                                                                ),
                                                          ),
                                                        );
                                                      }),
                                                    );
                                                  },
                                                ),
                                                InkWell(
                                                  onTap: () async {
                                                    FFAppState().update(() {
                                                      FFAppState().isSunday =
                                                          false;
                                                      FFAppState().isMonday =
                                                          false;
                                                      FFAppState().isTuesday =
                                                          false;
                                                      FFAppState().isWednesday =
                                                          false;
                                                      FFAppState().isThursday =
                                                          true;
                                                      FFAppState().isFriday =
                                                          false;
                                                      FFAppState().isSaturday =
                                                          false;
                                                    });
                                                    newDaysList5 = await actions
                                                        .getSelectedDaysList(
                                                      FFAppState().isSunday,
                                                      FFAppState().isMonday,
                                                      FFAppState().isTuesday,
                                                      FFAppState().isWednesday,
                                                      FFAppState().isThursday,
                                                      FFAppState().isFriday,
                                                      FFAppState().isSaturday,
                                                    );
                                                    FFAppState().update(() {
                                                      FFAppState().daysList =
                                                          newDaysList5!
                                                              .toList();
                                                      FFAppState()
                                                              .dayTimeList1 =
                                                          getJsonField(
                                                        FFAppState()
                                                            .workingJson,
                                                        r'''$.thus''',
                                                      ).toList();
                                                    });
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      enableDrag: false,
                                                      context: context,
                                                      builder: (context) {
                                                        return Padding(
                                                          padding:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .viewInsets,
                                                          child: Container(
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                1,
                                                            child:
                                                                EditDayAndTimeWidget(),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        setState(() {}));

                                                    setState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.edit_outlined,
                                                    color: Color(0xFF424242),
                                                    size: 24,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 10, 20),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'vfkxpxtz' /* Friday */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            Color(0xFF424242),
                                                        fontSize: 18,
                                                      ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Builder(
                                                  builder: (context) {
                                                    final friTime =
                                                        getJsonField(
                                                      FFAppState().workingJson,
                                                      r'''$.fri''',
                                                    ).toList();
                                                    return Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: List.generate(
                                                          friTime.length,
                                                          (friTimeIndex) {
                                                        final friTimeItem =
                                                            friTime[
                                                                friTimeIndex];
                                                        return Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 10, 0),
                                                          child: Text(
                                                            '${getJsonField(
                                                              friTimeItem,
                                                              r'''$.openTime''',
                                                            ).toString()}-${getJsonField(
                                                              friTimeItem,
                                                              r'''$.endTime''',
                                                            ).toString()}',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  color: Color(
                                                                      0xFF424242),
                                                                  fontSize: 18,
                                                                ),
                                                          ),
                                                        );
                                                      }),
                                                    );
                                                  },
                                                ),
                                                InkWell(
                                                  onTap: () async {
                                                    FFAppState().update(() {
                                                      FFAppState().isSunday =
                                                          false;
                                                      FFAppState().isMonday =
                                                          false;
                                                      FFAppState().isTuesday =
                                                          false;
                                                      FFAppState().isWednesday =
                                                          false;
                                                      FFAppState().isThursday =
                                                          false;
                                                      FFAppState().isFriday =
                                                          true;
                                                      FFAppState().isSaturday =
                                                          false;
                                                    });
                                                    newDaysList6 = await actions
                                                        .getSelectedDaysList(
                                                      FFAppState().isSunday,
                                                      FFAppState().isMonday,
                                                      FFAppState().isTuesday,
                                                      FFAppState().isWednesday,
                                                      FFAppState().isThursday,
                                                      FFAppState().isFriday,
                                                      FFAppState().isSaturday,
                                                    );
                                                    FFAppState().update(() {
                                                      FFAppState().daysList =
                                                          newDaysList6!
                                                              .toList();
                                                      FFAppState()
                                                              .dayTimeList1 =
                                                          getJsonField(
                                                        FFAppState()
                                                            .workingJson,
                                                        r'''$.fri''',
                                                      ).toList();
                                                    });
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      enableDrag: false,
                                                      context: context,
                                                      builder: (context) {
                                                        return Padding(
                                                          padding:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .viewInsets,
                                                          child: Container(
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                1,
                                                            child:
                                                                EditDayAndTimeWidget(),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        setState(() {}));

                                                    setState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.edit_outlined,
                                                    color: Color(0xFF424242),
                                                    size: 24,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 10, 20),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'rsahpjyg' /* Saterday */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            Color(0xFF424242),
                                                        fontSize: 18,
                                                      ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Builder(
                                                  builder: (context) {
                                                    final satTime =
                                                        getJsonField(
                                                      FFAppState().workingJson,
                                                      r'''$.sat''',
                                                    ).toList();
                                                    return Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: List.generate(
                                                          satTime.length,
                                                          (satTimeIndex) {
                                                        final satTimeItem =
                                                            satTime[
                                                                satTimeIndex];
                                                        return Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 10, 0),
                                                          child: Text(
                                                            '${getJsonField(
                                                              satTimeItem,
                                                              r'''$.openTime''',
                                                            ).toString()}-${getJsonField(
                                                              satTimeItem,
                                                              r'''$.endTime''',
                                                            ).toString()}',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  color: Color(
                                                                      0xFF424242),
                                                                  fontSize: 18,
                                                                ),
                                                          ),
                                                        );
                                                      }),
                                                    );
                                                  },
                                                ),
                                                InkWell(
                                                  onTap: () async {
                                                    FFAppState().update(() {
                                                      FFAppState().isSunday =
                                                          false;
                                                      FFAppState().isMonday =
                                                          false;
                                                      FFAppState().isTuesday =
                                                          false;
                                                      FFAppState().isWednesday =
                                                          false;
                                                      FFAppState().isThursday =
                                                          false;
                                                      FFAppState().isFriday =
                                                          false;
                                                      FFAppState().isSaturday =
                                                          true;
                                                    });
                                                    newDaysList7 = await actions
                                                        .getSelectedDaysList(
                                                      FFAppState().isSunday,
                                                      FFAppState().isMonday,
                                                      FFAppState().isTuesday,
                                                      FFAppState().isWednesday,
                                                      FFAppState().isThursday,
                                                      FFAppState().isFriday,
                                                      FFAppState().isSaturday,
                                                    );
                                                    FFAppState().update(() {
                                                      FFAppState().daysList =
                                                          newDaysList7!
                                                              .toList();
                                                      FFAppState()
                                                              .dayTimeList1 =
                                                          getJsonField(
                                                        FFAppState()
                                                            .workingJson,
                                                        r'''$.sat''',
                                                      ).toList();
                                                    });
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      enableDrag: false,
                                                      context: context,
                                                      builder: (context) {
                                                        return Padding(
                                                          padding:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .viewInsets,
                                                          child: Container(
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                1,
                                                            child:
                                                                EditDayAndTimeWidget(),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        setState(() {}));

                                                    setState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.edit_outlined,
                                                    color: Color(0xFF424242),
                                                    size: 24,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    InkWell(
                                      onTap: () async {
                                        FFAppState().update(() {
                                          FFAppState().isSunday = true;
                                          FFAppState().isMonday = true;
                                          FFAppState().isTuesday = true;
                                          FFAppState().isWednesday = true;
                                          FFAppState().isThursday = true;
                                          FFAppState().isFriday = true;
                                          FFAppState().isSaturday = true;
                                        });
                                        newDaysList1 =
                                            await actions.getSelectedDaysList(
                                          FFAppState().isSunday,
                                          FFAppState().isMonday,
                                          FFAppState().isTuesday,
                                          FFAppState().isWednesday,
                                          FFAppState().isThursday,
                                          FFAppState().isFriday,
                                          FFAppState().isSaturday,
                                        );
                                        FFAppState().update(() {
                                          FFAppState().daysList =
                                              newDaysList1!.toList();
                                        });
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return Padding(
                                              padding: MediaQuery.of(context)
                                                  .viewInsets,
                                              child: Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    1,
                                                child: EditDayAndTimeWidget(),
                                              ),
                                            );
                                          },
                                        ).then((value) => setState(() {}));

                                        setState(() {});
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.27,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          border: Border.all(
                                            color: Color(0xFF9F9F9F),
                                            width: 2,
                                          ),
                                        ),
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '1xfb62h7' /* Edit All hours */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Roboto',
                                                color: Color(0xFF424242),
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        FFAppState().update(() {
                                          FFAppState().isSunday = false;
                                          FFAppState().isMonday = true;
                                          FFAppState().isTuesday = true;
                                          FFAppState().isWednesday = true;
                                          FFAppState().isThursday = true;
                                          FFAppState().isFriday = true;
                                          FFAppState().isSaturday = true;
                                        });
                                        newDaysList8 =
                                            await actions.getSelectedDaysList(
                                          FFAppState().isSunday,
                                          FFAppState().isMonday,
                                          FFAppState().isTuesday,
                                          FFAppState().isWednesday,
                                          FFAppState().isThursday,
                                          FFAppState().isFriday,
                                          FFAppState().isSaturday,
                                        );
                                        FFAppState().update(() {
                                          FFAppState().daysList =
                                              newDaysList8!.toList();
                                        });
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return Padding(
                                              padding: MediaQuery.of(context)
                                                  .viewInsets,
                                              child: Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    1,
                                                child: EditDayAndTimeWidget(),
                                              ),
                                            );
                                          },
                                        ).then((value) => setState(() {}));

                                        setState(() {});
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.27,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          border: Border.all(
                                            color: Color(0xFF9F9F9F),
                                            width: 2,
                                          ),
                                        ),
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '5r1tohgb' /* Edit Mon-Sat */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Roboto',
                                                color: Color(0xFF424242),
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        FFAppState().update(() {
                                          FFAppState().isSunday = true;
                                          FFAppState().isMonday = false;
                                          FFAppState().isTuesday = false;
                                          FFAppState().isWednesday = false;
                                          FFAppState().isThursday = false;
                                          FFAppState().isFriday = false;
                                          FFAppState().isSaturday = false;
                                        });
                                        newDaysList9 =
                                            await actions.getSelectedDaysList(
                                          FFAppState().isSunday,
                                          FFAppState().isMonday,
                                          FFAppState().isTuesday,
                                          FFAppState().isWednesday,
                                          FFAppState().isThursday,
                                          FFAppState().isFriday,
                                          FFAppState().isSaturday,
                                        );
                                        FFAppState().update(() {
                                          FFAppState().daysList =
                                              newDaysList9!.toList();
                                        });
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return Padding(
                                              padding: MediaQuery.of(context)
                                                  .viewInsets,
                                              child: Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    1,
                                                child: EditDayAndTimeWidget(),
                                              ),
                                            );
                                          },
                                        ).then((value) => setState(() {}));

                                        setState(() {});
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.27,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          border: Border.all(
                                            color: Color(0xFF9F9F9F),
                                            width: 2,
                                          ),
                                        ),
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'f2kjfu5h' /* Edit Sunday */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Roboto',
                                                color: Color(0xFF424242),
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 2,
                                  child: Container(
                                    width: double.infinity,
                                    height: 2,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFCFCFCF),
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 5),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'vnbwgs4t' /* Add a Photo */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 20),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'b89up7ot' /* Help your edit get approved by... */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: Color(0xFF424242),
                                            fontSize: 16,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 20),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.32,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(16),
                                        border: Border.all(
                                          color: Color(0xFF9F9F9F),
                                          width: 2,
                                        ),
                                      ),
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Icon(
                                            Icons.add_a_photo_outlined,
                                            color: Color(0xFF1A73E8),
                                            size: 24,
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '14ucgyk0' /* Add a Photo */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  color: Color(0xFF424242),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 20),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'gjvz115o' /* If you add photos, they will a... */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: Color(0xFF424242),
                                            fontSize: 16,
                                          ),
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
                    width: double.infinity,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Color(0x00283636),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.28,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Color(0xFFC3C3C3),
                                      width: 2,
                                    ),
                                  ),
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'spie43gx' /* Cancel */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Roboto',
                                              color: Color(0xFF1A73E8),
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () async {
                                  monData =
                                      await actions.convertJsonToDataTypeA(
                                    getJsonField(
                                      FFAppState().workingJson,
                                      r'''$.mon''',
                                    ),
                                  );
                                  tueData =
                                      await actions.convertJsonToDataTypeA(
                                    getJsonField(
                                      FFAppState().workingJson,
                                      r'''$.tues''',
                                    ),
                                  );
                                  wedData =
                                      await actions.convertJsonToDataTypeA(
                                    getJsonField(
                                      FFAppState().workingJson,
                                      r'''$.weds''',
                                    ),
                                  );
                                  thuData =
                                      await actions.convertJsonToDataTypeA(
                                    getJsonField(
                                      FFAppState().workingJson,
                                      r'''$.thus''',
                                    ),
                                  );
                                  friData =
                                      await actions.convertJsonToDataTypeA(
                                    getJsonField(
                                      FFAppState().workingJson,
                                      r'''$.fri''',
                                    ),
                                  );
                                  satData =
                                      await actions.convertJsonToDataTypeA(
                                    getJsonField(
                                      FFAppState().workingJson,
                                      r'''$.sat''',
                                    ),
                                  );
                                  sunData =
                                      await actions.convertJsonToDataTypeA(
                                    getJsonField(
                                      FFAppState().workingJson,
                                      r'''$.sun''',
                                    ),
                                  );

                                  final workingHoursUpdateData = {
                                    'mon_timing_list': getTimeListFirestoreData(
                                      monData,
                                    ),
                                    'tues_timing_list':
                                        getTimeListFirestoreData(
                                      tueData,
                                    ),
                                    'wed_timing_list': getTimeListFirestoreData(
                                      wedData,
                                    ),
                                    'thus_timing_list':
                                        getTimeListFirestoreData(
                                      thuData,
                                    ),
                                    'fri_timing_list': getTimeListFirestoreData(
                                      friData,
                                    ),
                                    'sat_timing_list': getTimeListFirestoreData(
                                      satData,
                                    ),
                                    'sun_timing_list': getTimeListFirestoreData(
                                      sunData,
                                    ),
                                  };
                                  await widget.workingHoursRef!
                                      .update(workingHoursUpdateData);
                                  Navigator.pop(context);

                                  setState(() {});
                                },
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.28,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF1A73E8),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Color(0xFFC3C3C3),
                                      width: 2,
                                    ),
                                  ),
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'qs7s1f5y' /* Save */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Roboto',
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
