import 'package:flutter/material.dart';
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
          return Center(child: Text(state.url));
        }
        return const Center(child: Text('Nothing to'));
      },
    );
  }
}
