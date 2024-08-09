import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // Import BLoC Anda
import 'package:myapp/components/list_widged.dart';
import 'package:myapp/controller/surah/surah_bloc.dart';
import 'package:myapp/controller/surah/surah_repo.dart';

class SurahPages extends StatefulWidget {
  const SurahPages({super.key});

  @override
  State<SurahPages> createState() => _SurahPagesState();
}

class _SurahPagesState extends State<SurahPages> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SurahBloc(SurahRepository())..add(FetchSurah()),
      child: Scaffold(
        
        body: BlocBuilder<SurahBloc, SurahState>(
          builder: (context, state) {
            if (state is SurahLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is SurahLoaded) {
              return SingleChildScrollView(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: state.surah.data.map((datum) {
                    return ListTile(
                      leading: Text(datum.number.toString()),
                      title: Text(datum.englishName),
                      subtitle: Text(datum.name),
                    );
                  }).toList(),
                ),
              );
            } else if (state is SurahError) {
              return Center(child: Text('Error: ${state.message}'));
            } else {
              return const Center(child: Text('No Data'));
            }
          },
        ),
      ),
    );
  }
}