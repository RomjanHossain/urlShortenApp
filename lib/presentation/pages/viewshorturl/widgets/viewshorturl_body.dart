import 'package:flutter/material.dart';
import 'package:url_shorten/presentation/pages/viewshorturl/bloc/bloc.dart';
import 'package:url_shorten/presentation/pages/viewshorturl/widgets/loading_listview.dart';
import 'package:url_shorten/presentation/pages/viewshorturl/widgets/shorturl_card_listview.dart';

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
          return const LoadingListView();
        }
        if (state is ViewshorturlSuccess) {
          return ShortUrlCardListView(state: state);
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
