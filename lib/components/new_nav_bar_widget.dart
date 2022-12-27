import '../backend/backend.dart';
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

    return StreamBuilder<List<EntitiesRecord>>(
      stream: queryEntitiesRecord(
        queryBuilder: (entitiesRecord) =>
            entitiesRecord.where('entity_key', isEqualTo: FFAppState().key),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        List<EntitiesRecord> rowEntitiesRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final rowEntitiesRecord = rowEntitiesRecordList.isNotEmpty
            ? rowEntitiesRecordList.first
            : null;
        return Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                width: 100,
                height: 60,
                decoration: BoxDecoration(
                  color: rowEntitiesRecord!.primaryBtnColor,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.add_sharp,
                      color: rowEntitiesRecord!.secondaryBtnColor,
                      size: 30,
                    ),
                    Icon(
                      Icons.ios_share,
                      color: rowEntitiesRecord!.secondaryBtnColor,
                      size: 30,
                    ),
                    FaIcon(
                      FontAwesomeIcons.edit,
                      color: rowEntitiesRecord!.secondaryBtnColor,
                      size: 25,
                    ),
                    Icon(
                      Icons.folder_open,
                      color: rowEntitiesRecord!.secondaryBtnColor,
                      size: 30,
                    ),
                    Icon(
                      Icons.delete_outlined,
                      color: rowEntitiesRecord!.secondaryBtnColor,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
