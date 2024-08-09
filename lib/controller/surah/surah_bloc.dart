import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:myapp/controller/surah/surah_repo.dart';
import 'package:myapp/model/surah.dart';
 // Import repository yang telah dibuat

part 'surah_event.dart';
part 'surah_state.dart';

class SurahBloc extends Bloc<SurahEvent, SurahState> {
  final SurahRepository _repository;

  SurahBloc(this._repository) : super(SurahInitial()) {
    on<FetchSurah>(_onFetchSurah);
  }

  Future<void> _onFetchSurah(FetchSurah event, Emitter<SurahState> emit) async {
    emit(SurahLoading());
    try {
      final Surah surah = await _repository.fetchSurah();
      emit(SurahLoaded(surah));
    } catch (e) {
      emit(SurahError(e.toString()));
    }
  }
}
