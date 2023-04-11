import 'package:amzon_clone_app/common/widgets/buttom_bar.dart';
import 'package:amzon_clone_app/features/admin/screens/add_product_screen.dart';
import 'package:amzon_clone_app/features/auth/screens/auth_screen.dart';
import 'package:amzon_clone_app/features/home/screens/catergory_deals.dart';
import 'package:amzon_clone_app/features/home/screens/home_screen.dart';
import 'package:amzon_clone_app/features/search/screen/search_screen.dart';
import 'package:amzon_clone_app/model/product.dart';
import 'package:flutter/material.dart';
import 'package:amzon_clone_app/features/address/screens/address_screen.dart';
import 'package:amzon_clone_app/features/product_details/screens/product_details_screen.dart';

Route<dynamic> generalRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthScreen(),
      );
    case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeScreen(),
      );
    case BottomBar.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const ButtonBar(),
      );
    case AddProductScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AddProductScreen(),
      );
    case CategoryDealsScreen.routeName:
      var category = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => CategoryDealsScreen(
          category: category,
        ),
      );
    case SearchScreen.routeName:
      var searchQuery = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => SearchScreen(
          searchQuery: searchQuery,
        ),
      );
    case ProductDetailScreen.routeName:
      var product = routeSettings.arguments as Product;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => ProductDetailScreen(
          product: product,
        ),
      );
    case AddressScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AddressScreen(),
      );

    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen doesnot exist!'),
          ),
        ),
      );
  }
}
