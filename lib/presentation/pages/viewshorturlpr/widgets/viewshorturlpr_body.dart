import 'package:flutter/material.dart';
import 'package:url_shorten/presentation/pages/viewshorturlpr/bloc/bloc.dart';
import 'package:url_shorten/presentation/pages/viewshorturlpr/widgets/short_url_card_list_view_pr.dart';
import 'package:url_shorten/presentation/widgets/loading_listview.dart';

/// {@template viewshorturlpr_body}
/// Body of the ViewshorturlprPage.
///
/// Add what it does
/// {@endtemplate}
class ViewshorturlprBody extends StatelessWidget {
  /// {@macro viewshorturlpr_body}
  const ViewshorturlprBody({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<ViewshorturlprBloc, ViewshorturlprState>(
      builder: (BuildContext context, ViewshorturlprState state) {
        if (state is ViewshorturlPremiumLoading) {
          // return const Center(child: CircularProgressIndicator());
          return const LoadingListView();
        }
        if (state is ViewshorturlPremiumError) {
          return Center(
            child: Text(
              state.message,
              textAlign: TextAlign.center,
            ),
          );
        }
        if (state is ViewshorturlPremiumSuccess) {
          return ShortUrlCardListViewPr(state: state);
        }
        if (state is ConnectionError) {
          return const Center(
            child: Text(
              'No Internet Connection',
              textAlign: TextAlign.center,
            ),
          );
        }
        return const Center(child: Text('Premium Page'));
      },
    );
}
