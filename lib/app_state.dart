import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _recentSearches = prefs
              .getStringList('ff_recentSearches')
              ?.map((x) {
                try {
                  return RecentSearchStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _recentSearches;
    });
    _safeInit(() {
      _cartItems = prefs
              .getStringList('ff_cartItems')
              ?.map((path) => path.ref)
              .toList() ??
          _cartItems;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_selectedAddress')) {
        try {
          final serializedData = prefs.getString('ff_selectedAddress') ?? '{}';
          _selectedAddress =
              AddressStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _login = prefs.getBool('ff_login') ?? _login;
    });
    _safeInit(() {
      _time = prefs.containsKey('ff_time')
          ? DateTime.fromMillisecondsSinceEpoch(prefs.getInt('ff_time')!)
          : _time;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _isfavourite = false;
  bool get isfavourite => _isfavourite;
  set isfavourite(bool value) {
    _isfavourite = value;
  }

  List<RecentSearchStruct> _recentSearches = [];
  List<RecentSearchStruct> get recentSearches => _recentSearches;
  set recentSearches(List<RecentSearchStruct> value) {
    _recentSearches = value;
    prefs.setStringList(
        'ff_recentSearches', value.map((x) => x.serialize()).toList());
  }

  void addToRecentSearches(RecentSearchStruct value) {
    recentSearches.add(value);
    prefs.setStringList('ff_recentSearches',
        _recentSearches.map((x) => x.serialize()).toList());
  }

  void removeFromRecentSearches(RecentSearchStruct value) {
    recentSearches.remove(value);
    prefs.setStringList('ff_recentSearches',
        _recentSearches.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromRecentSearches(int index) {
    recentSearches.removeAt(index);
    prefs.setStringList('ff_recentSearches',
        _recentSearches.map((x) => x.serialize()).toList());
  }

  void updateRecentSearchesAtIndex(
    int index,
    RecentSearchStruct Function(RecentSearchStruct) updateFn,
  ) {
    recentSearches[index] = updateFn(_recentSearches[index]);
    prefs.setStringList('ff_recentSearches',
        _recentSearches.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInRecentSearches(int index, RecentSearchStruct value) {
    recentSearches.insert(index, value);
    prefs.setStringList('ff_recentSearches',
        _recentSearches.map((x) => x.serialize()).toList());
  }

  List<DocumentReference> _cartItems = [];
  List<DocumentReference> get cartItems => _cartItems;
  set cartItems(List<DocumentReference> value) {
    _cartItems = value;
    prefs.setStringList('ff_cartItems', value.map((x) => x.path).toList());
  }

  void addToCartItems(DocumentReference value) {
    cartItems.add(value);
    prefs.setStringList('ff_cartItems', _cartItems.map((x) => x.path).toList());
  }

  void removeFromCartItems(DocumentReference value) {
    cartItems.remove(value);
    prefs.setStringList('ff_cartItems', _cartItems.map((x) => x.path).toList());
  }

  void removeAtIndexFromCartItems(int index) {
    cartItems.removeAt(index);
    prefs.setStringList('ff_cartItems', _cartItems.map((x) => x.path).toList());
  }

  void updateCartItemsAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    cartItems[index] = updateFn(_cartItems[index]);
    prefs.setStringList('ff_cartItems', _cartItems.map((x) => x.path).toList());
  }

  void insertAtIndexInCartItems(int index, DocumentReference value) {
    cartItems.insert(index, value);
    prefs.setStringList('ff_cartItems', _cartItems.map((x) => x.path).toList());
  }

  AddressStruct _selectedAddress = AddressStruct();
  AddressStruct get selectedAddress => _selectedAddress;
  set selectedAddress(AddressStruct value) {
    _selectedAddress = value;
    prefs.setString('ff_selectedAddress', value.serialize());
  }

  void updateSelectedAddressStruct(Function(AddressStruct) updateFn) {
    updateFn(_selectedAddress);
    prefs.setString('ff_selectedAddress', _selectedAddress.serialize());
  }

  List<ProductDataStruct> _recentProducts = [];
  List<ProductDataStruct> get recentProducts => _recentProducts;
  set recentProducts(List<ProductDataStruct> value) {
    _recentProducts = value;
  }

  void addToRecentProducts(ProductDataStruct value) {
    recentProducts.add(value);
  }

  void removeFromRecentProducts(ProductDataStruct value) {
    recentProducts.remove(value);
  }

  void removeAtIndexFromRecentProducts(int index) {
    recentProducts.removeAt(index);
  }

  void updateRecentProductsAtIndex(
    int index,
    ProductDataStruct Function(ProductDataStruct) updateFn,
  ) {
    recentProducts[index] = updateFn(_recentProducts[index]);
  }

  void insertAtIndexInRecentProducts(int index, ProductDataStruct value) {
    recentProducts.insert(index, value);
  }

  String _activePage = 'Dashboard';
  String get activePage => _activePage;
  set activePage(String value) {
    _activePage = value;
  }

  List<String> _menuOptions = [
    'dashboard',
    'orders',
    'products',
    'media',
    'customers',
    'sellers',
    'categories'
  ];
  List<String> get menuOptions => _menuOptions;
  set menuOptions(List<String> value) {
    _menuOptions = value;
  }

  void addToMenuOptions(String value) {
    menuOptions.add(value);
  }

  void removeFromMenuOptions(String value) {
    menuOptions.remove(value);
  }

  void removeAtIndexFromMenuOptions(int index) {
    menuOptions.removeAt(index);
  }

  void updateMenuOptionsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    menuOptions[index] = updateFn(_menuOptions[index]);
  }

  void insertAtIndexInMenuOptions(int index, String value) {
    menuOptions.insert(index, value);
  }

  bool _login = true;
  bool get login => _login;
  set login(bool value) {
    _login = value;
    prefs.setBool('ff_login', value);
  }

  DateTime? _time;
  DateTime? get time => _time;
  set time(DateTime? value) {
    _time = value;
    value != null
        ? prefs.setInt('ff_time', value.millisecondsSinceEpoch)
        : prefs.remove('ff_time');
  }

  String _test = '';
  String get test => _test;
  set test(String value) {
    _test = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
