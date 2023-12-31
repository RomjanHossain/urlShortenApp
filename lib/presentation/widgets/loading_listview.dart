import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class LoadingListView extends StatelessWidget {
  const LoadingListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) => ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) => SizedBox(
            height: 200,
            child: const Card(
              margin: EdgeInsets.all(8),
              child: ListTile(
                title: Text(''),
                subtitle: Text(''),
              ),
            )
                .animate(
                  onPlay: (AnimationController controller) => controller.repeat(),
                )
                .shimmer(
                  delay: 500.milliseconds,
                  angle: 2,
                  color: Theme.of(context).colorScheme.secondary,
                  curve: Curves.easeIn,
                  duration: 800.milliseconds,
                ),
          ),
      ),
    );
}
