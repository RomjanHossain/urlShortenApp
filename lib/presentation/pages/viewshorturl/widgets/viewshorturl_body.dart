import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_shorten/domain/entities/shrtco_entities.dart';
import 'package:url_shorten/presentation/pages/viewshorturl/bloc/bloc.dart';
import 'package:url_shorten/presentation/pages/viewshorturl/widgets/shrt_card.dart';

/// {@template viewshorturl_body}
/// Body of the ViewshorturlPage.
///
/// Add what it does
/// {@endtemplate}
class ViewshorturlBody extends StatelessWidget {
  /// {@macro viewshorturl_body}
  const ViewshorturlBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ViewshorturlBloc, ViewshorturlState>(
      builder: (context, state) {
        if (state is ViewshorturlInitial) {
          return Center(
              child: Text(
            state.url,
            textAlign: TextAlign.center,
          ));
        }
        if (state is ViewshorturlLoading) {
          // return const Center(child: CircularProgressIndicator());
          return ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return SizedBox(
                height: 200,
                child: const Card(
                  margin: EdgeInsets.all(8),
                  child: ListTile(
                    title: Text(''),
                    subtitle: Text(''),
                  ),
                )
                    .animate(
                      onPlay: (controller) => controller.repeat(reverse: true),
                    )
                    .shimmer(
                      delay: 500.milliseconds,
                      angle: 2,
                      curve: Curves.easeIn,
                      duration: 800.milliseconds,
                    ),
              );
            },
          );
        }
        if (state is ViewshorturlSuccess) {
          return ListView.builder(
            itemCount: state.surls.length,
            itemBuilder: (context, index) {
              Object _data = state.surls[index];
              print(_data.runtimeType);
              if (_data.runtimeType == ShrtcoEntity) {
                _data = _data as ShrtcoEntity;

                return ShrtCoCard(
                  shrtcoEntity: _data,
                );
              }
              return const Card(
                margin: EdgeInsets.all(8),
                child: ListTile(
                  title: Text('Nah'),
                  subtitle: Text('Hah 2'),
                ),
              )
                  .animate(
                    onPlay: (controller) => controller.repeat(),
                  )
                  .shimmer(
                    delay: 500.milliseconds,
                    angle: 2,
                    color: Theme.of(context).colorScheme.secondary,
                    curve: Curves.easeIn,
                    duration: 800.milliseconds,
                  );
            },
          );
        }
        if (state is ViewshorturlError) {
          return Center(
            child: Text(
              state.message,
              textAlign: TextAlign.center,
            ),
          );
        }
        if (state is ConnectionError) {
          return const Center(
            child: Text(
              'No Internet Connection',
              textAlign: TextAlign.center,
            ),
          );
        }
        return const Center(child: Text('Nothing to show'));
      },
    );
  }
}
