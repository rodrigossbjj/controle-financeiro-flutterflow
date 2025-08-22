import '../database.dart';

class ViewSaldofinalTable extends SupabaseTable<ViewSaldofinalRow> {
  @override
  String get tableName => 'view_saldofinal';

  @override
  ViewSaldofinalRow createRow(Map<String, dynamic> data) =>
      ViewSaldofinalRow(data);
}

class ViewSaldofinalRow extends SupabaseDataRow {
  ViewSaldofinalRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewSaldofinalTable();

  String? get usuario => getField<String>('usuario');
  set usuario(String? value) => setField<String>('usuario', value);

  double? get totalentrada => getField<double>('totalentrada');
  set totalentrada(double? value) => setField<double>('totalentrada', value);

  double? get totalgasto => getField<double>('totalgasto');
  set totalgasto(double? value) => setField<double>('totalgasto', value);

  double? get saldofinal => getField<double>('saldofinal');
  set saldofinal(double? value) => setField<double>('saldofinal', value);
}
