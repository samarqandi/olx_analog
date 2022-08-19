import 'package:flutter/material.dart';
import '../presentation.dart';

abstract class RouteTo {
  static const home = '/';
  static const browse = '/browse';
  static const product = '/product';
  static const orderHistory = '/order_history';
  static const profile = '/profile';

  static const signUp = '/sign_up';

  static const wishlist = '/wishlist';
}

abstract class AppNavigation {
  static final routes = <String, WidgetBuilder>{
    RouteTo.home: (_) => const Home(),
    RouteTo.browse: (_) => const Browse(),
    RouteTo.product: (_) => const Product(),
    RouteTo.orderHistory: (_) => const OrderHistory(),
    RouteTo.profile: (_) => const Profile(),
    RouteTo.signUp: (_) => const SignUp(),
    RouteTo.wishlist: (_) => const WishList(),
  };
}
