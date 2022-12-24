import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginPageCopyWidget extends StatefulWidget {
  const LoginPageCopyWidget({Key? key}) : super(key: key);

  @override
  _LoginPageCopyWidgetState createState() => _LoginPageCopyWidgetState();
}

class _LoginPageCopyWidgetState extends State<LoginPageCopyWidget> {
  TextEditingController? loginEmailController;
  TextEditingController? loginPasswordController;
  late bool loginPasswordVisibility;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    loginEmailController = TextEditingController();
    loginPasswordController = TextEditingController();
    loginPasswordVisibility = false;
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    loginEmailController?.dispose();
    loginPasswordController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(
                        'https://s2.glbimg.com/eyXFx93GvmeWL6wHIFSSa4n-OOs=/0x0:1814x1330/924x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_63b422c2caee4269b8b34177e8876b93/internal_photos/bs/2021/K/t/0LSK5dQr22BvWqbsQ9Jw/sede-localiza3.jpg',
                      ).image,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color(0x54009248),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: Image.network(
                                          'data:image/png;base64,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',
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.75,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.18,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.75,
                                        decoration: BoxDecoration(
                                          color: Color(0x00FFFFFF),
                                        ),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'uqxd763g' /* Gerenciador de Localidades no ... */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color: Colors.white,
                                                fontSize: 27,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.75,
                                        decoration: BoxDecoration(
                                          color: Color(0x00FFFFFF),
                                        ),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'itx38qxl' /* Atualizar as information das a... */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color: Colors.white,
                                                fontSize: 16.9,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.75,
                                    height: MediaQuery.of(context).size.height *
                                        0.25,
                                    decoration: BoxDecoration(
                                      color: Color(0x00FFFFFF),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          height: 55,
                                          decoration: BoxDecoration(
                                            color: Color(0x69009248),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: TextFormField(
                                            controller: loginEmailController,
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'b8ysdg7l' /* Email */,
                                              ),
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText2
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF009248),
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF009248),
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Open Sans',
                                                  color: Colors.white,
                                                ),
                                          ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: 55,
                                          decoration: BoxDecoration(
                                            color: Color(0x69009248),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: TextFormField(
                                            controller: loginPasswordController,
                                            autofocus: true,
                                            obscureText:
                                                !loginPasswordVisibility,
                                            decoration: InputDecoration(
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'v5a83olt' /* Password */,
                                              ),
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText2
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF009248),
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF009248),
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              suffixIcon: InkWell(
                                                onTap: () => setState(
                                                  () => loginPasswordVisibility =
                                                      !loginPasswordVisibility,
                                                ),
                                                focusNode: FocusNode(
                                                    skipTraversal: true),
                                                child: Icon(
                                                  loginPasswordVisibility
                                                      ? Icons
                                                          .visibility_outlined
                                                      : Icons
                                                          .visibility_off_outlined,
                                                  color: Color(0xFF757575),
                                                  size: 22,
                                                ),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Open Sans',
                                                  color: Colors.white,
                                                ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () async {
                                            GoRouter.of(context)
                                                .prepareAuthEvent();

                                            final user = await signInWithEmail(
                                              context,
                                              loginEmailController!.text,
                                              loginPasswordController!.text,
                                            );
                                            if (user == null) {
                                              return;
                                            }

                                            context.goNamedAuth(
                                                'HomePage', mounted);
                                          },
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.45,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF009248),
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'fhx9vr6l' /* Login */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color: Colors.white,
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.normal,
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
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
