import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/product.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Dio _dio = Dio();
  List<Product> _products = [];

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  void _loadData({String? searchText}) async {
    String url = "https://freetestapi.com/api/v1/products";
    if (searchText != null) {
      url += "?search=$searchText";
    }
    Response res = await _dio.get(
      url,
    );
    List<Product> products = [];
    if (res.data != null) {
      for (var p in res.data) {
        products.add(Product.fromJson(p));
      }
    }
    setState(() {
      _products = products;
    });
  }

  @override
  Widget build(BuildContext context) {
    // resizeToAvoidBottomInset: false,
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "FCommerce",
          ),
        ),
        body: _buildUI());
  }

  Widget _buildUI() {
    return SizedBox.expand(
        child: Column(
      children: [
        _searchBar(),
        if (_products.isNotEmpty) _productsListView(),
        if (_products.isEmpty) Text("No products found"),
      ],
    ));
  }

  Widget _searchBar() {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.80,
      child: TextField(
        onSubmitted: (value) {
          _loadData(searchText: value);
        },
        decoration: const InputDecoration(
          hintText: "Search....",
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Widget _productsListView() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.80,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: _products.length,
        itemBuilder: (context, index) {
          Product product = _products[index];
          return ListTile(
            leading: Image.network(product.image),
            title: Text(product.name),
            subtitle: Text("${product.brand} • \$${product.price}"),
            trailing: Text("${product.rating} ⭐"),
          );
        },
      ),
    );
  }
}
