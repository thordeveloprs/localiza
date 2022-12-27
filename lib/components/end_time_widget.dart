import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EndTimeWidget extends StatefulWidget {
  const EndTimeWidget({Key? key}) : super(key: key);

  @override
  _EndTimeWidgetState createState() => _EndTimeWidgetState();
}

class _EndTimeWidgetState extends State<EndTimeWidget> {
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
                  '0hnowol2' /* Close Time */,
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
      ],
    );
  }
}
