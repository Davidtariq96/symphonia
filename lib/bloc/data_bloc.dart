import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symphonia/model/model.dart';
import 'package:symphonia/repository/data_services.dart';

class DataBloc extends Cubit<List<Model>> {
  DataBloc() : super([]);
  final _cryptoPrices = DataServices();
  void fetchCryptoPrices() async => emit(await _cryptoPrices.fetchData());
}
