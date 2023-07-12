import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_shorten/domain/entities/shrtco_entities.dart';
import 'package:url_shorten/presentation/pages/viewshorturl/bloc/bloc.dart';

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
          // return Center(
          //     child: Text(
          //   state.url,
          //   textAlign: TextAlign.center,
          // ));
          return const ShrtCoCard();
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
              if (_data.runtimeType is ShrtcoEntity) {
                _data = _data as ShrtcoEntity;
                return Card(
                  margin: const EdgeInsets.all(8),
                  child: ListTile(
                    title: Text(_data.code),
                    subtitle: Text(_data.originalLink),
                  ),
                );
              }
              return const Card(
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
                  );
            },
          );
        }
        return const Center(child: Text('Nothing to'));
      },
    );
  }
}

class ShrtCoCard extends StatelessWidget {
  const ShrtCoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: ListTile(
        title: const Text('ShrtCo'),
        subtitle: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Card(
              color: Theme.of(context).colorScheme.tertiary,
              child: ListTile(
                title: const Text("shrtco.de/hu3pp4"),
                trailing: IconButton(
                  onPressed: () {
                    Clipboard.setData(const ClipboardData(text: "your text"));

                    /// show a snackbar
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Copied to Clipboard'),
                        duration: Duration(seconds: 1),
                      ),
                    );
                  },
                  icon: const Icon(Icons.copy),
                  padding: const EdgeInsets.all(0),
                  constraints: const BoxConstraints(
                    minWidth: 0,
                    minHeight: 0,
                  ),
                ),
              ),
            ),
            Card(
              color: Theme.of(context).colorScheme.tertiary,
              child: ListTile(
                title: const Text("shrtco.de/hu3pp4"),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.copy),
                  padding: const EdgeInsets.all(0),
                  constraints: const BoxConstraints(
                    minWidth: 0,
                    minHeight: 0,
                  ),
                ),
              ),
            ),
            Card(
              color: Theme.of(context).colorScheme.tertiary,
              child: ListTile(
                title: const Text("shrtco.de/hu3pp4"),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.copy),
                  // alignment: Alignment.centerRight,
                  padding: const EdgeInsets.all(0),
                  constraints: const BoxConstraints(
                    minWidth: 0,
                    minHeight: 0,
                  ),
                ),
              ),
            ),

            // original link
            const Text(
              'Original Link:',
              textAlign: TextAlign.left,
            ),
            Card(
              color: Theme.of(context).colorScheme.tertiary,
              child: Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "https://www.youtube.com/watch?v=AOzy44b2gko",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.copy),
                        padding: const EdgeInsets.all(0),
                        constraints: const BoxConstraints(
                          minWidth: 0,
                          minHeight: 0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
