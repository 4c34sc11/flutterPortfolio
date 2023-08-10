import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'set_dark_mode_model.dart';
export 'set_dark_mode_model.dart';

class SetDarkModeWidget extends StatefulWidget {
  const SetDarkModeWidget({Key? key}) : super(key: key);

  @override
  _SetDarkModeWidgetState createState() => _SetDarkModeWidgetState();
}

class _SetDarkModeWidgetState extends State<SetDarkModeWidget> {
  late SetDarkModeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SetDarkModeModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (Theme.of(context).brightness == Brightness.dark)
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: Color(0x0014181B),
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 40.0,
                  icon: Icon(
                    Icons.wb_sunny_outlined,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 25.0,
                  ),
                  onPressed: () async {
                    setDarkModeSetting(context, ThemeMode.light);
                  },
                ),
              ),
            if (Theme.of(context).brightness == Brightness.light)
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: Color(0x0014181B),
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 40.0,
                  icon: Icon(
                    Icons.dark_mode_outlined,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 25.0,
                  ),
                  onPressed: () async {
                    setDarkModeSetting(context, ThemeMode.dark);
                  },
                ),
              ),
            if (Theme.of(context).brightness == Brightness.dark)
              Text(
                'Set Light Mode',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Raleway',
                      color: FlutterFlowTheme.of(context).secondaryText,
                    ),
              ),
            if (Theme.of(context).brightness == Brightness.light)
              Text(
                'Set Dark Mode',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Raleway',
                      color: FlutterFlowTheme.of(context).secondaryText,
                    ),
              ),
          ],
        ),
      ),
    );
  }
}
