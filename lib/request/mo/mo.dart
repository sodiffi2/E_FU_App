import 'dart:convert';

import 'package:e_fu/request/data.dart';
import 'package:e_fu/request/mo/mo_data.dart';
import 'package:e_fu/request/api.dart';

abstract class MoAPI {
  // 查詢Mo 伴列表
  Future<Format> getMoList(String id);
  // 查詢隱藏Mo 伴列表
  Future<Format> getHindMoList(String id);
  // 隱藏Mo 伴
  Future<Format> hindMo(Mo mo, String userId);
  // 取消隱藏Mo 伴
  Future<Format> showMo(String id, mId);

  Future<Format> search(String keyword);

  Future<Format> rank(String userId);

  Future<Format> detail(String userId, friendId);
}

class MoRepo extends API implements MoAPI {
  @override
  Future<Format> getMoList(String userId) async {
    return await lunch(client.get(Uri.parse("$domain/mo/$userId")));
  }

  @override
  Future<Format> getHindMoList(String userId) async {
    return await lunch(client.get(Uri.parse("$domain/mo/$userId/hide")));
  }

  @override
  Future<Format> hindMo(Mo mo, String userId) async {
    return await lunch(client.post(Uri.parse('$domain/mo/$userId/hide'),
        headers: header, body: jsonEncode(mo.toJson())));
  }

  @override
  Future<Format> showMo(String userId, mId) async {
    return await lunch(client.get(Uri.parse("$domain/mo/$userId/doshow")));
  }

  @override
  Future<Format> search(String keyword) async {
    return await lunch(client.get(Uri.parse('$domain/mo/search/$keyword')));
  }

  @override
  Future<Format> rank(String userId) async {
    return await lunch(client.get(Uri.parse("$domain/mo/rank/$userId")));
  }

  @override
  Future<Format> detail(String userId, friendId) async {
    return await lunch(
        client.get(Uri.parse("$domain/mo/detail/$userId/$friendId")));
  }
}
