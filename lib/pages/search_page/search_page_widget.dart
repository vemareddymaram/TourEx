import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'search_page_model.dart';
export 'search_page_model.dart';

class SearchPageWidget extends StatefulWidget {
  const SearchPageWidget({Key? key}) : super(key: key);

  @override
  _SearchPageWidgetState createState() => _SearchPageWidgetState();
}

class _SearchPageWidgetState extends State<SearchPageWidget> {
  late SearchPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchPageModel());

    _model.searchFieldController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<ApiCallResponse>(
      future: TravelAdvisorAPIGroup.locationsAutoCompleteAPICall.call(
        place: _model.searchFieldController.text,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitChasingDots(
                  color: FlutterFlowTheme.of(context).primary,
                  size: 50.0,
                ),
              ),
            ),
          );
        }
        final searchPageLocationsAutoCompleteAPIResponse = snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: NestedScrollView(
              floatHeaderSlivers: true,
              headerSliverBuilder: (context, _) => [
                SliverAppBar(
                  pinned: true,
                  floating: false,
                  backgroundColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  automaticallyImplyLeading: false,
                  leading: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30.0,
                    borderWidth: 1.0,
                    buttonSize: 60.0,
                    icon: Icon(
                      Icons.arrow_back_rounded,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 30.0,
                    ),
                    onPressed: () async {
                      context.pushNamed('homePage');
                    },
                  ),
                  actions: [],
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text(
                      'Search here',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Outfit',
                            letterSpacing: 2.0,
                          ),
                    ),
                    centerTitle: true,
                    expandedTitleScale: 1.0,
                  ),
                  elevation: 0.0,
                )
              ],
              body: Builder(
                builder: (context) {
                  return SafeArea(
                    top: false,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.95,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFDBE2E7),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x33000000),
                                    offset: Offset(0.0, 2.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.85,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 0.0, 0.0),
                                      child: Autocomplete<String>(
                                        initialValue: TextEditingValue(),
                                        optionsBuilder: (textEditingValue) {
                                          if (textEditingValue.text == '') {
                                            return const Iterable<
                                                String>.empty();
                                          }
                                          return <String>[].where((option) {
                                            final lowercaseOption =
                                                option.toLowerCase();
                                            return lowercaseOption.contains(
                                                textEditingValue.text
                                                    .toLowerCase());
                                          });
                                        },
                                        optionsViewBuilder:
                                            (context, onSelected, options) {
                                          return AutocompleteOptionsList(
                                            textFieldKey: _model.searchFieldKey,
                                            textController:
                                                _model.searchFieldController!,
                                            options: options.toList(),
                                            onSelected: onSelected,
                                            textStyle: TextStyle(),
                                            textHighlightStyle: TextStyle(),
                                            elevation: 4.0,
                                            optionBackgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                            optionHighlightColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            maxHeight: 200.0,
                                          );
                                        },
                                        onSelected: (String selection) {
                                          setState(() =>
                                              _model.searchFieldSelectedOption =
                                                  selection);
                                          FocusScope.of(context).unfocus();
                                        },
                                        fieldViewBuilder: (
                                          context,
                                          textEditingController,
                                          focusNode,
                                          onEditingComplete,
                                        ) {
                                          _model.searchFieldController =
                                              textEditingController;
                                          return TextFormField(
                                            key: _model.searchFieldKey,
                                            controller: textEditingController,
                                            focusNode: focusNode,
                                            onEditingComplete:
                                                onEditingComplete,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              '_model.searchFieldController',
                                              Duration(milliseconds: 2000),
                                              () => setState(() {}),
                                            ),
                                            autofocus: true,
                                            textInputAction:
                                                TextInputAction.search,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        fontSize: 14.0,
                                                      ),
                                              hintText: 'Search here......',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        letterSpacing: 2.0,
                                                      ),
                                              enabledBorder: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              focusedErrorBorder:
                                                  InputBorder.none,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                            maxLines: 5,
                                            validator: _model
                                                .searchFieldControllerValidator
                                                .asValidator(context),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.1,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(20.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                    ),
                                    child: FlutterFlowIconButton(
                                      borderRadius: 20.0,
                                      buttonSize: 40.0,
                                      icon: Icon(
                                        Icons.clear,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 25.0,
                                      ),
                                      onPressed: () {
                                        print('clearBtn pressed ...');
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 10.0, 20.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Search results',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      letterSpacing: 1.0,
                                    ),
                              ),
                              Text(
                                '4',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 10.0, 10.0, 0.0),
                            child: ListView(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.25,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(20.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(20.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(20.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(20.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                          child: Image.network(
                                            'https://images.unsplash.com/photo-1564507592333-c60657eea523?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHx0YWp8ZW58MHx8fHwxNjk1NjM0NjAxfDA&ixlib=rb-4.0.3&q=80&w=1080',
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.25,
                                            height: 100.0,
                                            fit: BoxFit.fill,
                                            errorBuilder:
                                                (context, error, stackTrace) =>
                                                    Image.asset(
                                              'assets/images/error_image.jpg',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.25,
                                              height: 100.0,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.7,
                                        height: 100.0,
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.00, 0.00),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 25.0, 0.0, 0.0),
                                                child: SelectionArea(
                                                    child: AutoSizeText(
                                                  '',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        fontSize: 16.0,
                                                        letterSpacing: 1.0,
                                                      ),
                                                  minFontSize: 16.0,
                                                )),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.00, 0.00),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 10.0, 0.0, 25.0),
                                                child: SelectionArea(
                                                    child: AutoSizeText(
                                                  '',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        letterSpacing: 1.0,
                                                      ),
                                                  minFontSize: 14.0,
                                                )),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ].addToEnd(SizedBox(height: 30.0)),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
