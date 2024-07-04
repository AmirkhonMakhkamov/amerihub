import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const NavBarPage() : const EntryWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const NavBarPage() : const EntryWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'HomePage')
              : const HomePageWidget(),
        ),
        FFRoute(
          name: 'OrderSuccess_2',
          path: '/orderSuccess2',
          builder: (context, params) => const OrderSuccess2Widget(),
        ),
        FFRoute(
          name: 'VerifyOTP',
          path: '/verifyOTP',
          builder: (context, params) => const VerifyOTPWidget(),
        ),
        FFRoute(
          name: 'Notifications',
          path: '/notifications',
          builder: (context, params) => const NotificationsWidget(),
        ),
        FFRoute(
          name: 'Cart',
          path: '/cart',
          builder: (context, params) =>
              params.isEmpty ? const NavBarPage(initialPage: 'Cart') : const CartWidget(),
        ),
        FFRoute(
          name: 'Authentication',
          path: '/authentication',
          builder: (context, params) => const AuthenticationWidget(),
        ),
        FFRoute(
          name: 'ChangePassword',
          path: '/changePassword',
          builder: (context, params) => const ChangePasswordWidget(),
        ),
        FFRoute(
          name: 'PasswordReset',
          path: '/passwordReset',
          builder: (context, params) => const PasswordResetWidget(),
        ),
        FFRoute(
          name: 'SignIn_User',
          path: '/signInUser',
          builder: (context, params) => const SignInUserWidget(),
        ),
        FFRoute(
          name: 'SignUp_User',
          path: '/signUpUser',
          builder: (context, params) => const SignUpUserWidget(),
        ),
        FFRoute(
          name: 'AddressAdd_1',
          path: '/addressAdd1',
          builder: (context, params) => const AddressAdd1Widget(),
        ),
        FFRoute(
          name: 'AddressAdd_2',
          path: '/addressAdd2',
          builder: (context, params) => const AddressAdd2Widget(),
        ),
        FFRoute(
          name: 'AddressCheckout',
          path: '/addressCheckout',
          builder: (context, params) => const AddressCheckoutWidget(),
        ),
        FFRoute(
          name: 'AddressEdit',
          path: '/addressEdit',
          builder: (context, params) => AddressEditWidget(
            ref: params.getParam(
              'ref',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['addresses'],
            ),
          ),
        ),
        FFRoute(
          name: 'Addresses',
          path: '/addresses',
          builder: (context, params) => const AddressesWidget(),
        ),
        FFRoute(
          name: 'OrderCancellation',
          path: '/orderCancellation',
          builder: (context, params) => OrderCancellationWidget(
            orderRef: params.getParam(
              'orderRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['orders'],
            ),
          ),
        ),
        FFRoute(
          name: 'OrderDetails',
          path: '/orderDetails',
          builder: (context, params) => OrderDetailsWidget(
            ref: params.getParam(
              'ref',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['orders'],
            ),
            index: params.getParam(
              'index',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'Orders',
          path: '/orders',
          builder: (context, params) => const OrdersWidget(),
        ),
        FFRoute(
          name: 'OrderSuccess',
          path: '/orderSuccess',
          asyncParams: {
            'order': getDoc(['orders'], OrdersRecord.fromSnapshot),
          },
          builder: (context, params) => OrderSuccessWidget(
            order: params.getParam(
              'order',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'OrderSummary',
          path: '/orderSummary',
          builder: (context, params) => const OrderSummaryWidget(),
        ),
        FFRoute(
          name: 'Categories',
          path: '/categories',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'Categories')
              : const CategoriesWidget(),
        ),
        FFRoute(
          name: 'CategoryFilter',
          path: '/categoryFilter',
          builder: (context, params) => CategoryFilterWidget(
            category: params.getParam(
              'category',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Coupons',
          path: '/coupons',
          builder: (context, params) => const CouponsWidget(),
        ),
        FFRoute(
          name: 'Offers',
          path: '/offers',
          builder: (context, params) => const OffersWidget(),
        ),
        FFRoute(
          name: 'Reviews',
          path: '/reviews',
          builder: (context, params) => ReviewsWidget(
            ref: params.getParam(
              'ref',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['products'],
            ),
          ),
        ),
        FFRoute(
          name: 'Wallet',
          path: '/wallet',
          builder: (context, params) => const WalletWidget(),
        ),
        FFRoute(
          name: 'Wishlist',
          path: '/wishlist',
          builder: (context, params) => const WishlistWidget(),
        ),
        FFRoute(
          name: 'ProductDetails',
          path: '/productDetails',
          builder: (context, params) => ProductDetailsWidget(
            ref: params.getParam(
              'ref',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['products'],
            ),
          ),
        ),
        FFRoute(
          name: 'Passbook',
          path: '/passbook',
          builder: (context, params) => PassbookWidget(
            ref: params.getParam(
              'ref',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['wallet'],
            ),
          ),
        ),
        FFRoute(
          name: 'AllProducts',
          path: '/allProducts',
          builder: (context, params) => const AllProductsWidget(),
        ),
        FFRoute(
          name: 'Payments',
          path: '/payments',
          builder: (context, params) => const PaymentsWidget(),
        ),
        FFRoute(
          name: 'Profile',
          path: '/profile',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'Profile')
              : const ProfileWidget(),
        ),
        FFRoute(
          name: 'ProfileEdit',
          path: '/profileEdit',
          builder: (context, params) => const ProfileEditWidget(),
        ),
        FFRoute(
          name: 'ReviewPhotoView',
          path: '/reviewPhotoView',
          asyncParams: {
            'review': getDoc(['reviews'], ReviewsRecord.fromSnapshot),
          },
          builder: (context, params) => ReviewPhotoViewWidget(
            review: params.getParam(
              'review',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'ReviewSubmit',
          path: '/reviewSubmit',
          builder: (context, params) => ReviewSubmitWidget(
            productRef: params.getParam(
              'productRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['products'],
            ),
          ),
        ),
        FFRoute(
          name: 'Search',
          path: '/search',
          builder: (context, params) => const SearchWidget(),
        ),
        FFRoute(
          name: 'SearchResult',
          path: '/searchResult',
          asyncParams: {
            'result': getDocList(['products'], ProductsRecord.fromSnapshot),
          },
          builder: (context, params) => SearchResultWidget(
            query: params.getParam(
              'query',
              ParamType.String,
            ),
            result: params.getParam<ProductsRecord>(
              'result',
              ParamType.Document,
              isList: true,
            ),
          ),
        ),
        FFRoute(
          name: 'FAQ',
          path: '/faq',
          builder: (context, params) => const FaqWidget(),
        ),
        FFRoute(
          name: 'Authentication_Admin',
          path: '/authenticationAdmin',
          builder: (context, params) => const AuthenticationAdminWidget(),
        ),
        FFRoute(
          name: 'Entry',
          path: '/entry',
          builder: (context, params) => const EntryWidget(),
        ),
        FFRoute(
          name: 'Media_Admin',
          path: '/mediaAdmin',
          builder: (context, params) => const MediaAdminWidget(),
        ),
        FFRoute(
          name: 'SearchResult_Admin',
          path: '/searchResultAdmin',
          builder: (context, params) => SearchResultAdminWidget(
            result: params.getParam<String>(
              'result',
              ParamType.String,
              isList: true,
            ),
          ),
        ),
        FFRoute(
          name: 'Reviews_Admin',
          path: '/reviewsAdmin',
          builder: (context, params) => const ReviewsAdminWidget(),
        ),
        FFRoute(
          name: 'Products_Admin',
          path: '/productsAdmin',
          builder: (context, params) => const ProductsAdminWidget(),
        ),
        FFRoute(
          name: 'Orders_Admin',
          path: '/ordersAdmin',
          builder: (context, params) => const OrdersAdminWidget(),
        ),
        FFRoute(
          name: 'Customers_Admin',
          path: '/customersAdmin',
          builder: (context, params) => const CustomersAdminWidget(),
        ),
        FFRoute(
          name: 'Sellers_Admin',
          path: '/sellersAdmin',
          builder: (context, params) => const SellersAdminWidget(),
        ),
        FFRoute(
          name: 'Employees_Admin',
          path: '/employeesAdmin',
          builder: (context, params) => const EmployeesAdminWidget(),
        ),
        FFRoute(
          name: 'Categories_Admin',
          path: '/categoriesAdmin',
          builder: (context, params) => const CategoriesAdminWidget(),
        ),
        FFRoute(
          name: 'Dashboard_Admin',
          path: '/dashboard-admin',
          builder: (context, params) => const DashboardAdminWidget(),
        ),
        FFRoute(
          name: 'Settings_Admin',
          path: '/settingsAdmin',
          builder: (context, params) => const SettingsAdminWidget(),
        ),
        FFRoute(
          name: 'AccountSetting',
          path: '/accountSetting',
          builder: (context, params) => const AccountSettingWidget(),
        ),
        FFRoute(
          name: 'OrderDetails_Delivery',
          path: '/orderDetailsDelivery',
          builder: (context, params) => OrderDetailsDeliveryWidget(
            ref: params.getParam(
              'ref',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['orders'],
            ),
            index: params.getParam(
              'index',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'Orders_Delivery',
          path: '/ordersDelivery',
          builder: (context, params) => const OrdersDeliveryWidget(),
        ),
        FFRoute(
          name: 'HomePage_Delivery',
          path: '/homePageDelivery',
          builder: (context, params) => const HomePageDeliveryWidget(),
        ),
        FFRoute(
          name: 'Onboarding_Delivery',
          path: '/onboardingDelivery',
          builder: (context, params) => const OnboardingDeliveryWidget(),
        ),
        FFRoute(
          name: 'Authentication_Seller',
          path: '/authenticationSeller',
          builder: (context, params) => const AuthenticationSellerWidget(),
        ),
        FFRoute(
          name: 'Registration_Seller',
          path: '/registrationSeller',
          builder: (context, params) => const RegistrationSellerWidget(),
        ),
        FFRoute(
          name: 'BankDetails',
          path: '/bankDetails',
          builder: (context, params) => const BankDetailsWidget(),
        ),
        FFRoute(
          name: 'BusinessInfo',
          path: '/businessInfo',
          builder: (context, params) => const BusinessInfoWidget(),
        ),
        FFRoute(
          name: 'Withdrawals',
          path: '/withdrawals',
          builder: (context, params) => const WithdrawalsWidget(),
        ),
        FFRoute(
          name: 'Products',
          path: '/products',
          builder: (context, params) => const ProductsWidget(),
        ),
        FFRoute(
          name: 'Reviews_Seller',
          path: '/reviewsSeller',
          builder: (context, params) => const ReviewsSellerWidget(),
        ),
        FFRoute(
          name: 'OrderReport',
          path: '/orderReport',
          builder: (context, params) => const OrderReportWidget(),
        ),
        FFRoute(
          name: 'ProductReport',
          path: '/productReport',
          builder: (context, params) => const ProductReportWidget(),
        ),
        FFRoute(
          name: 'TransactionReport',
          path: '/transactionReport',
          builder: (context, params) => const TransactionReportWidget(),
        ),
        FFRoute(
          name: 'BusinessDetails',
          path: '/businessDetails',
          builder: (context, params) => const BusinessDetailsWidget(),
        ),
        FFRoute(
          name: 'GeneralSettings',
          path: '/generalSettings',
          builder: (context, params) => const GeneralSettingsWidget(),
        ),
        FFRoute(
          name: 'Queries',
          path: '/queries',
          builder: (context, params) => const QueriesWidget(),
        ),
        FFRoute(
          name: 'SupportTicket',
          path: '/supportTicket',
          builder: (context, params) => const SupportTicketWidget(),
        ),
        FFRoute(
          name: 'SupportTicketDetails',
          path: '/supportTicketDetails',
          builder: (context, params) => const SupportTicketDetailsWidget(),
        ),
        FFRoute(
          name: 'Dashboard_Seller',
          path: '/dashboard-seller',
          builder: (context, params) => const DashboardSellerWidget(),
        ),
        FFRoute(
          name: 'OrdersSeller',
          path: '/ordersSeller',
          builder: (context, params) => const OrdersSellerWidget(),
        ),
        FFRoute(
          name: 'RefundDetails_Seller',
          path: '/refundDetailsSeller',
          builder: (context, params) => const RefundDetailsSellerWidget(),
        ),
        FFRoute(
          name: 'Refunds_Seller',
          path: '/refundsSeller',
          builder: (context, params) => const RefundsSellerWidget(),
        ),
        FFRoute(
          name: 'PickupAddress',
          path: '/pickupAddress',
          builder: (context, params) => const PickupAddressWidget(),
        ),
        FFRoute(
          name: 'Coupons_Seller',
          path: '/couponsSeller',
          builder: (context, params) => const CouponsSellerWidget(),
        ),
        FFRoute(
          name: 'AddProducts_Seller',
          path: '/addProductsSeller',
          builder: (context, params) => const AddProductsSellerWidget(),
        ),
        FFRoute(
          name: 'Support_Admin',
          path: '/supportAdmin',
          builder: (context, params) => const SupportAdminWidget(),
        ),
        FFRoute(
          name: 'Ticket_Admin',
          path: '/ticketAdmin',
          builder: (context, params) => const TicketAdminWidget(),
        ),
        FFRoute(
          name: 'Customers_Details',
          path: '/customersDetails',
          builder: (context, params) => const CustomersDetailsWidget(),
        ),
        FFRoute(
          name: 'DeliveryPartners',
          path: '/deliveryPartners',
          builder: (context, params) => const DeliveryPartnersWidget(),
        ),
        FFRoute(
          name: 'Analytics_Admin',
          path: '/analyticsAdmin',
          builder: (context, params) => const AnalyticsAdminWidget(),
        ),
        FFRoute(
          name: 'Attributes_Admin',
          path: '/attributesAdmin',
          builder: (context, params) => const AttributesAdminWidget(),
        ),
        FFRoute(
          name: 'AttributesDetails',
          path: '/attributesDetails',
          builder: (context, params) => const AttributesDetailsWidget(),
        ),
        FFRoute(
          name: 'Brands',
          path: '/brands',
          builder: (context, params) => const BrandsWidget(),
        ),
        FFRoute(
          name: 'ProductsAdd_Admin',
          path: '/productsAddAdmin',
          builder: (context, params) => const ProductsAddAdminWidget(),
        ),
        FFRoute(
          name: 'Announcement',
          path: '/announcement',
          builder: (context, params) => const AnnouncementWidget(),
        ),
        FFRoute(
          name: 'Banners',
          path: '/banners',
          builder: (context, params) => const BannersWidget(),
        ),
        FFRoute(
          name: 'Coupons_Admin',
          path: '/couponsAdmin',
          builder: (context, params) => const CouponsAdminWidget(),
        ),
        FFRoute(
          name: 'FeaturedDeals',
          path: '/featuredDeals',
          builder: (context, params) => const FeaturedDealsWidget(),
        ),
        FFRoute(
          name: 'FeaturedDealsCreate',
          path: '/featuredDealsCreate',
          builder: (context, params) => const FeaturedDealsCreateWidget(),
        ),
        FFRoute(
          name: 'FlashDeals',
          path: '/flashDeals',
          builder: (context, params) => const FlashDealsWidget(),
        ),
        FFRoute(
          name: 'FlashDealsCreate',
          path: '/flashDealsCreate',
          builder: (context, params) => const FlashDealsCreateWidget(),
        ),
        FFRoute(
          name: 'PushNotification',
          path: '/pushNotification',
          builder: (context, params) => const PushNotificationWidget(),
        ),
        FFRoute(
          name: 'SellerOnboard',
          path: '/sellerOnboard',
          builder: (context, params) => const SellerOnboardWidget(),
        ),
        FFRoute(
          name: 'Marketing_Admin',
          path: '/marketingAdmin',
          builder: (context, params) => const MarketingAdminWidget(),
        ),
        FFRoute(
          name: 'Notifications_Admin',
          path: '/notificationsAdmin',
          builder: (context, params) => const NotificationsAdminWidget(),
        ),
        FFRoute(
          name: 'Refunds_Admin',
          path: '/refundsAdmin',
          builder: (context, params) => const RefundsAdminWidget(),
        ),
        FFRoute(
          name: 'OrderDetails_Admin',
          path: '/orderDetailsAdmin',
          builder: (context, params) => OrderDetailsAdminWidget(
            ref: params.getParam(
              'ref',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['orders'],
            ),
          ),
        ),
        FFRoute(
          name: 'test',
          path: '/test',
          builder: (context, params) => const TestWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/entry';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
