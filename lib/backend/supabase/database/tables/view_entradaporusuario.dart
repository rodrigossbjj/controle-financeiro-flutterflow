import '../database.dart';

class ViewEntradaporusuarioTable
    extends SupabaseTable<ViewEntradaporusuarioRow> {
  @override
  String get tableName => 'view_entradaporusuario';

  @override
  ViewEntradaporusuarioRow createRow(Map<String, dynamic> data) =>
      ViewEntradaporusuarioRow(data);
}

class ViewEntradaporusuarioRow extends SupabaseDataRow {
  ViewEntradaporusuarioRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewEntradaporusuarioTable();

  String? get usuario => getField<String>('usuario');
  set usuario(String? value) => setField<String>('usuario', value);

  double? get totalentrada => getField<double>('totalentrada');
  set totalentrada(double? value) => setField<double>('totalentrada', value);
}
