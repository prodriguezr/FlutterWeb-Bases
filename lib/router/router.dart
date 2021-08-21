import 'package:fluro/fluro.dart';
import 'route_handlers.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.define(
      '/',
      handler: counterHandler,
      transitionDuration: Duration(milliseconds: 400),
      transitionType: TransitionType.fadeIn,
    );

    router.define(
      '/stateful',
      handler: counterHandler,
      transitionDuration: Duration(milliseconds: 400),
      transitionType: TransitionType.fadeIn,
    );

    router.define(
      '/stateful/:base',
      handler: counterHandler,
      transitionDuration: Duration(milliseconds: 400),
      transitionType: TransitionType.fadeIn,
    );

    router.define(
      '/provider',
      handler: counterProviderHandler,
      transitionDuration: Duration(milliseconds: 400),
      transitionType: TransitionType.fadeIn,
    );

    router.define(
      '/dashboard/users/:userid/:roleid',
      handler: dashboardUserHandler,
      transitionDuration: Duration(milliseconds: 400),
      transitionType: TransitionType.fadeIn,
    );

    router.notFoundHandler = notFoundHandler;
  }
}
