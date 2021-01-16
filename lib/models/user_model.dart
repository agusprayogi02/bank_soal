// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

import 'package:equatable/equatable.dart';

List<UserModel> userModelFromJson(String str) =>
    List<UserModel>.from(json.decode(str).map((x) => UserModel.fromJson(x)));

String userModelToJson(List<UserModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// ignore: must_be_immutable
class UserModel extends Equatable {
  UserModel({
    this.uid,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.jk,
    this.role,
    this.sekolah,
  });

  String uid;
  String firstName;
  String lastName;
  String email;
  String password;
  String jk;
  String role;
  Sekolah sekolah;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        uid: json["uid"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        password: json["password"],
        jk: json["jk"],
        role: json["role"],
        sekolah: Sekolah.fromJson(json["sekolah"]),
      );

  Map<String, dynamic> toJson() => {
        "uid": uid,
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "password": password,
        "jk": jk,
        "role": role,
        "sekolah": sekolah.toJson(),
      };

  @override
  List<Object> get props => [uid, email];
}

// ignore: must_be_immutable
class Sekolah extends Equatable {
  Sekolah({
    this.id,
    this.nama,
    this.kelas,
    this.jurusan,
    this.kode,
  });

  int id;
  String nama;
  int kelas;
  String jurusan;
  String kode;

  factory Sekolah.fromJson(Map<String, dynamic> json) => Sekolah(
        id: json["id"],
        nama: json["nama"],
        kelas: json["kelas"],
        jurusan: json["jurusan"],
        kode: json["kode"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama": nama,
        "kelas": kelas,
        "jurusan": jurusan,
        "kode": kode,
      };

  @override
  List<Object> get props => [id, nama, kelas, jurusan, kode];
}
