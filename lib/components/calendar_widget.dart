import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'calendar_model.dart';
export 'calendar_model.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({super.key});

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
      alignment: const AlignmentDirectional(0.00, 1.00),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: MediaQuery.sizeOf(context).height * 1.0,
        decoration: const BoxDecoration(
          color: Color(0xFF323B43),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(50.0),
            topRight: Radius.circular(50.0),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(1.00, -1.00),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 15.0, 0.0),
                  child: Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: const BoxDecoration(),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.close,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        size: 24.0,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                child: FlutterFlowCalendar(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  iconColor: FlutterFlowTheme.of(context).primaryBackground,
                  weekFormat: false,
                  weekStartsMonday: true,
                  initialDate: getCurrentTimestamp,
                  rowHeight: 40.0,
                  onChange: (DateTimeRange? newSelectedDate) async {
                    _model.calendarSelectedDay = newSelectedDate;
                    setState(() {
                      FFAppState().startDate = dateTimeFormat(
                        'd/M/y',
                        _model.calendarSelectedDay!.start,
                        locale: FFLocalizations.of(context).languageCode,
                      );
                      FFAppState().endDate = dateTimeFormat(
                        'd/M/y',
                        _model.calendarSelectedDay!.end,
                        locale: FFLocalizations.of(context).languageCode,
                      );
                    });
                    setState(() {});
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
