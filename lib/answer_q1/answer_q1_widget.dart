import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'answer_q1_model.dart';
export 'answer_q1_model.dart';

class AnswerQ1Widget extends StatefulWidget {
  const AnswerQ1Widget({Key? key}) : super(key: key);

  @override
  _AnswerQ1WidgetState createState() => _AnswerQ1WidgetState();
}

class _AnswerQ1WidgetState extends State<AnswerQ1Widget> {
  late AnswerQ1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AnswerQ1Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Answers',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22.0,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2.0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: double.infinity,
              height: 850.0,
              child: Stack(
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                    child: PageView(
                      controller: _model.pageViewController ??=
                          PageController(initialPage: 0),
                      scrollDirection: Axis.vertical,
                      children: [
                        Stack(
                          children: [
                            Image.network(
                              'https://picsum.photos/seed/297/600',
                              width: 936.2,
                              height: 317.6,
                              fit: BoxFit.cover,
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.92, -0.04),
                              child: Text(
                                'Question 1:',
                                style: FlutterFlowTheme.of(context).title2,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.94, 0.17),
                              child: FlutterFlowRadioButton(
                                options: ['A', 'B', 'C', 'D'].toList(),
                                onChanged: (val) => setState(
                                    () => _model.radioButtonValue1 = val),
                                optionHeight: 25.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                                buttonPosition: RadioButtonPosition.left,
                                direction: Axis.vertical,
                                radioButtonColor: Colors.blue,
                                inactiveRadioButtonColor: Color(0xFF90BCE4),
                                toggleable: false,
                                horizontalAlignment: WrapAlignment.start,
                                verticalAlignment: WrapCrossAlignment.start,
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1.01, -0.09),
                              child: Text(
                                'Question 2:',
                                style: FlutterFlowTheme.of(context).title2,
                              ),
                            ),
                            Image.network(
                              'https://picsum.photos/seed/793/600',
                              width: 480.8,
                              height: 300.6,
                              fit: BoxFit.cover,
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.12),
                              child: FlutterFlowRadioButton(
                                options: ['A', 'B', 'C', 'D'].toList(),
                                onChanged: (val) => setState(
                                    () => _model.radioButtonValue2 = val),
                                optionHeight: 25.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                                buttonPosition: RadioButtonPosition.left,
                                direction: Axis.vertical,
                                radioButtonColor: Colors.blue,
                                inactiveRadioButtonColor: Color(0xFF90BCE4),
                                toggleable: false,
                                horizontalAlignment: WrapAlignment.start,
                                verticalAlignment: WrapCrossAlignment.start,
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.95, -0.16),
                              child: Text(
                                'Question 3:',
                                style: FlutterFlowTheme.of(context).title2,
                              ),
                            ),
                            Image.network(
                              'https://picsum.photos/seed/77/600',
                              width: 508.5,
                              height: 271.7,
                              fit: BoxFit.cover,
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.99, 0.04),
                              child: FlutterFlowRadioButton(
                                options: ['A', 'B', 'C', 'D'].toList(),
                                onChanged: (val) => setState(
                                    () => _model.radioButtonValue3 = val),
                                optionHeight: 25.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                                buttonPosition: RadioButtonPosition.left,
                                direction: Axis.vertical,
                                radioButtonColor: Colors.blue,
                                inactiveRadioButtonColor: Color(0xFF90BCE4),
                                toggleable: false,
                                horizontalAlignment: WrapAlignment.start,
                                verticalAlignment: WrapCrossAlignment.start,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(1.03, 0.97),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30.0,
                                borderWidth: 1.0,
                                buttonSize: 60.0,
                                icon: Icon(
                                  Icons.arrow_forward,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 30.0,
                                ),
                                onPressed: () async {
                                  context.pushNamed('Dboard');
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(1.0, -1.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                      child: smooth_page_indicator.SmoothPageIndicator(
                        controller: _model.pageViewController ??=
                            PageController(initialPage: 0),
                        count: 3,
                        axisDirection: Axis.vertical,
                        onDotClicked: (i) {
                          _model.pageViewController!.animateToPage(
                            i,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.ease,
                          );
                        },
                        effect: smooth_page_indicator.ExpandingDotsEffect(
                          expansionFactor: 2.0,
                          spacing: 8.0,
                          radius: 16.0,
                          dotWidth: 16.0,
                          dotHeight: 16.0,
                          dotColor: Color(0xFF9E9E9E),
                          activeDotColor: Color(0xFF3F51B5),
                          paintStyle: PaintingStyle.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
