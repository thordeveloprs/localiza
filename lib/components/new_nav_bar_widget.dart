import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NewNavBarWidget extends StatefulWidget {
  const NewNavBarWidget({Key? key}) : super(key: key);

  @override
  _NewNavBarWidgetState createState() => _NewNavBarWidgetState();
}

class _NewNavBarWidgetState extends State<NewNavBarWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Container(
            width: 100,
            height: 60,
            decoration: BoxDecoration(
              color: FFAppState().primaryBtnClr,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.add_sharp,
                  color: FFAppState().secondaryBtnClr,
                  size: 30,
                ),
                Icon(
                  Icons.ios_share,
                  color: FFAppState().secondaryBtnClr,
                  size: 30,
                ),
                FaIcon(
                  FontAwesomeIcons.edit,
                  color: FFAppState().secondaryBtnClr,
                  size: 25,
                ),
                Icon(
                  Icons.folder_open,
                  color: FFAppState().secondaryBtnClr,
                  size: 30,
                ),
                Icon(
                  Icons.delete_outlined,
                  color: FFAppState().secondaryBtnClr,
                  size: 30,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
