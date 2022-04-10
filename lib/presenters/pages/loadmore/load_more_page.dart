import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Notfikasi {
  String title, body;

  Notfikasi({this.title = "", this.body = ""});

  factory Notfikasi.fromJson(Map<String, dynamic> json) => Notfikasi(
        title: json['title'] ?? '',
        body: json['body'] ?? '',
      );
}

class LoadMorePage extends StatefulWidget {
  const LoadMorePage({Key? key}) : super(key: key);

  @override
  _LoadMorePageState createState() => _LoadMorePageState();
}

class _LoadMorePageState extends State<LoadMorePage> {
  final _dio = Dio()
    ..options.contentType = 'JSON'
    ..options.responseType = ResponseType.json
    ..options.contentType = 'application/json';

  final _dataList = <Notfikasi>[];
  final _scrollController = ScrollController();
  String _errorMessage = "";

  bool _isLoading = false;
  int page = 1;

  /// total data perpage harus tahu untuk perhitungan nomor halaman
  static const totalDAtaPerPage = 10;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.offset >
          _scrollController.position.maxScrollExtent - 5) {
        _loadData();
      }
    });
    _loadData();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _loadData() {
    debugPrint("Loading data");

    /// jika sedang loading batalkan tindakan
    if (_isLoading) return;

    /// jika list masih kosong sudah pasti load page 1
    /// tidak perlu dikalkulasi lagi
    if (_dataList.isNotEmpty) {
      /// jika jumlah data tidak pas hasil kelipatan
      /// berarti sudah di ujung data
      /// tidak perlu dilanjutkan
      if (_dataList.length % totalDAtaPerPage != 0) {
        return;
      }
      int currentPage = _dataList.length ~/ totalDAtaPerPage;
      page = currentPage + 1;
    }
    setState(() {
      _isLoading = true;

      /// reset dulu error message ke default
      _errorMessage = "";
    });
    final url = "https://dev.nyaman.online:8080/api/notif/$page";
    debugPrint(url);
    _dio
        .getUri(Uri.parse(url),
            options: Options(
              headers: {
                'x-auth-token':
                    "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjoiNjE5MzFkMjhiNzg0YWY2YzIzYzgwZDZmIiwibGV2ZWxfdXNlciI6NH0sImlhdCI6MTY0NjE4OTM5MSwiZXhwIjozMTcxOTA2MzE3OTF9.HqW8OLiRtwWI63oplznXkIIOpGjNi_gadBxKU3auFok"
              },
            ))
        .then((value) {
      // debugPrint("response status: ${value.statusCode}\nbody:${value.data}");
      setState(() {
        _parseResponse(value);
        _isLoading = false;
      });
    }).onError((error, stackTrace) {
      debugPrint(stackTrace.toString());
      setState(() {
        _isLoading = false;
        _errorMessage = error.toString();
      });
    });
  }

  void _parseResponse(Response response) {
    if (response.data is! Map) {
      /// response bukan berupa json
      _errorMessage = response.data.toString();
      return;
    }

    /// cek status sukses apa tidak
    if (response.data['status'] != 'success') {
      _errorMessage = response.data['message'];
      return;
    }

    /// aman
    /// parse responsenya
    final list = List<Notfikasi>.from(
        (response.data['notif'] as Iterable).map((e) => Notfikasi.fromJson(e)));
    _dataList.addAll(list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Load More Example'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 30),
        controller: _scrollController,
        itemCount: _dataList.length + 1,
        itemBuilder: (context, index) {
          if (index == _dataList.length) {
            if (_isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (_errorMessage.isNotEmpty) {
              return Center(
                child: Text(_errorMessage),
              );
            } else {
              return const SizedBox.shrink();
            }
          }
          return Column(
            children: [
              ListTile(
                leading: Text("${index+1}"),
                title: Text(_dataList[index].title),
                subtitle: Text(_dataList[index].body),
              ),
              Container(
                color: Colors
                    .primaries[Random().nextInt(Colors.primaries.length - 1)]
                    .withAlpha(50),
                height: 10,
              )
            ],
          );
        },
      ),
    );
  }
}

