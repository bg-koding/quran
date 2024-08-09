part of 'surah_bloc.dart';

@immutable
sealed class SurahState {}

final class SurahInitial extends SurahState {}

final class SurahLoading extends SurahState {}

final class SurahLoaded extends SurahState {
  final Surah surah;

  SurahLoaded(this.surah);
}

final class SurahError extends SurahState {
  final String message;

  SurahError(this.message);
}
