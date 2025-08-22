import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'adicionar_registro_widget.dart' show AdicionarRegistroWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdicionarRegistroModel extends FlutterFlowModel<AdicionarRegistroWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for addDescricao widget.
  FocusNode? addDescricaoFocusNode;
  TextEditingController? addDescricaoTextController;
  String? Function(BuildContext, String?)? addDescricaoTextControllerValidator;
  String? _addDescricaoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo \'Descrição do Gasto\' obrigatório.';
    }

    return null;
  }

  // State field(s) for addValor widget.
  FocusNode? addValorFocusNode;
  TextEditingController? addValorTextController;
  String? Function(BuildContext, String?)? addValorTextControllerValidator;
  String? _addValorTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo \'R\$ 00,00\' obrigatório';
    }

    return null;
  }

  // State field(s) for addCategoria widget.
  String? addCategoriaValue;
  FormFieldController<String>? addCategoriaValueController;
  // State field(s) for addTipo widget.
  String? addTipoValue;
  FormFieldController<String>? addTipoValueController;

  @override
  void initState(BuildContext context) {
    addDescricaoTextControllerValidator = _addDescricaoTextControllerValidator;
    addValorTextControllerValidator = _addValorTextControllerValidator;
  }

  @override
  void dispose() {
    addDescricaoFocusNode?.dispose();
    addDescricaoTextController?.dispose();

    addValorFocusNode?.dispose();
    addValorTextController?.dispose();
  }
}
