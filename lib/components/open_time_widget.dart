import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OpenTimeWidget extends StatefulWidget {
  const OpenTimeWidget({Key? key}) : super(key: key);

  @override
  _OpenTimeWidgetState createState() => _OpenTimeWidgetState();
}

class _OpenTimeWidgetState extends State<OpenTimeWidget> {
  TextEditingController? textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: TextFormField(
                controller: textController,
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: FFLocalizations.of(context).getText(
                    '6bbmmqrf' /* Open Time */,
                  ),
                  labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Roboto',
                        color: Color(0xFF9C9C9C),
                      ),
                  hintStyle: FlutterFlowTheme.of(context).bodyText2,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF565656),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF565656),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Open Sans',
                      fontSize: 16,
                    ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
