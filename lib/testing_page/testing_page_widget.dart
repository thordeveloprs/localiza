import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../custom_code/actions/index.dart' as actions;
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TestingPageWidget extends StatefulWidget {
  const TestingPageWidget({Key? key}) : super(key: key);

  @override
  _TestingPageWidgetState createState() => _TestingPageWidgetState();
}

class _TestingPageWidgetState extends State<TestingPageWidget> {
  DateTime? datePicked;
  List<dynamic>? newList;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          FFLocalizations.of(context).getText(
            '3z0a9mce' /* Page Title */,
          ),
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Open Sans',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Builder(
                    builder: (context) {
                      final abc = FFAppState().dayTimeList1.toList();
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(abc.length, (abcIndex) {
                          final abcItem = abc[abcIndex];
                          return Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  onTap: () async {
                                    final _datePickedTime =
                                        await showTimePicker(
                                      context: context,
                                      initialTime: TimeOfDay.fromDateTime(
                                          getCurrentTimestamp),
                                    );
                                    if (_datePickedTime != null) {
                                      setState(
                                        () => datePicked = DateTime(
                                          getCurrentTimestamp.year,
                                          getCurrentTimestamp.month,
                                          getCurrentTimestamp.day,
                                          _datePickedTime.hour,
                                          _datePickedTime.minute,
                                        ),
                                      );
                                    }
                                    FFAppState().update(() {
                                      FFAppState().timePicker = dateTimeFormat(
                                        'jms',
                                        datePicked,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      );
                                    });
                                    newList = await actions.getJasonList(
                                      FFAppState().dayTimeList1.toList(),
                                      abcIndex,
                                      FFAppState().timePicker,
                                    );
                                    FFAppState().update(() {
                                      FFAppState().dayTimeList1 =
                                          newList!.toList();
                                    });

                                    setState(() {});
                                  },
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          getJsonField(
                                            abcItem,
                                            r'''$.openTime''',
                                          ).toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color: Colors.white,
                                              ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'v749mz1n' /* Hello World */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color: Colors.white,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      );
                    },
                  ),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  FFAppState().update(() {
                    FFAppState().indiii = 0;
                  });
                  FFAppState().update(() {
                    FFAppState().addToDayTimeList1(functions.getJson());
                  });
                },
                text: FFLocalizations.of(context).getText(
                  'g8flt2m5' /* Button */,
                ),
                options: FFButtonOptions(
                  width: 130,
                  height: 40,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Open Sans',
                        color: Colors.white,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
