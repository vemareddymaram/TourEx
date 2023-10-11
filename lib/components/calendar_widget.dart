import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'calendar_model.dart';
export 'calendar_model.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({Key? key}) : super(key: key);

  @override
  _CalendarWidgetState createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  late CalendarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalendarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.00, 1.00),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: MediaQuery.sizeOf(context).height * 1.0,
        decoration: BoxDecoration(
          color: Color(0xFF323B43),
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  Navigator.pop(context);
                },
                child: SizedBox(
                  width: 50.0,
                  child: Divider(
                    height: 20.0,
                    thickness: 3.0,
                    color: FlutterFlowTheme.of(context).accent1,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                child: FlutterFlowCalendar(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  iconColor: FlutterFlowTheme.of(context).primaryBackground,
                  weekFormat: false,
                  weekStartsMonday: true,
                  initialDate: getCurrentTimestamp,
                  rowHeight: 40.0,
                  onChange: (DateTimeRange? newSelectedDate) {
                    setState(
                        () => _model.calendarSelectedDay = newSelectedDate);
                  },
                  titleStyle: FlutterFlowTheme.of(context)
                      .headlineSmall
                      .override(
                        fontFamily: 'Outfit',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        fontSize: 22.0,
                      ),
                  dayOfWeekStyle:
                      FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: 'Outfit',
                            color: FlutterFlowTheme.of(context).accent4,
                            fontSize: 16.0,
                          ),
                  dateStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Outfit',
                        color: FlutterFlowTheme.of(context).accent3,
                        fontSize: 14.0,
                      ),
                  selectedDateStyle: FlutterFlowTheme.of(context).titleSmall,
                  inactiveDateStyle:
                      FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Outfit',
                            color: FlutterFlowTheme.of(context).secondaryText,
                          ),
                  locale: FFLocalizations.of(context).languageCode,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
