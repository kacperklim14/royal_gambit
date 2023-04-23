import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:royal_gambit/events/presenstation/views/events_view.dart';

import '../../search/presentation/views/search_view.dart';

const String myPath = '/events';
const String searchPath = 'search';

class AppRouter {
  GoRouter router = GoRouter(
    initialLocation: myPath,
    routes: [
      GoRoute(
        path: myPath,
        pageBuilder: (context, state) => const MaterialPage(
          child: EventsView(),
        ),
        routes: [
          GoRoute(
            name: 'search',
            path: searchPath,
            pageBuilder: (context, state) =>
                const MaterialPage(child: SearchView()),
          ),
        ],
      ),
    ],
  );
}
