import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'editar_registro_widget.dart' show EditarRegistroWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarRegistroModel extends FlutterFlowModel<EditarRegistroWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for descricao widget.
  FocusNode? descricaoFocusNode;
  TextEditingController? descricaoTextController;
  String? Function(BuildContext, String?)? descricaoTextControllerValidator;
  // State field(s) for valor widget.
  FocusNode? valorFocusNode;
  TextEditingController? valorTextController;
  String? Function(BuildContext, String?)? valorTextControllerValidator;
  // State field(s) for categoria widget.
  String? categoriaValue;
  FormFieldController<String>? categoriaValueController;
  // State field(s) for tipo widget.
  String? tipoValue;
  FormFieldController<String>? tipoValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    descricaoFocusNode?.dispose();
    descricaoTextController?.dispose();

    valorFocusNode?.dispose();
    valorTextController?.dispose();
  }
}
