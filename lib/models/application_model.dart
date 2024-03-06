// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:dart_appwrite/models.dart';
import 'package:equatable/equatable.dart';

import 'package:maintenance_config/models/certificate_model.dart';

class ApplicationModel extends Equatable {
  final String id;
  final String application;
  final String installPath;
  final List<String> logFilesPaths;
  final List<int> ports;
  final List<String> tempFilesPaths;
  final List<String> configFilesPaths;
  final List<String> xmlConfigFilePath;
  final List<UserCredential> users;
  final List<CertificateModel> certificates;
  final List<String> essentialServices;

  const ApplicationModel({
    required this.id,
    required this.application,
    required this.installPath,
    required this.logFilesPaths,
    required this.ports,
    required this.tempFilesPaths,
    required this.configFilesPaths,
    required this.xmlConfigFilePath,
    required this.users,
    required this.certificates,
    required this.essentialServices,
  });

  @override
  List<Object> get props {
    return [
      id,
      application,
      installPath,
      logFilesPaths,
      ports,
      tempFilesPaths,
      configFilesPaths,
      xmlConfigFilePath,
      users,
      certificates,
      essentialServices,
    ];
  }

  static const ApplicationModel empty = ApplicationModel(
    id: '',
    application: '',
    installPath: '',
    logFilesPaths: [],
    ports: [],
    tempFilesPaths: [],
    configFilesPaths: [],
    xmlConfigFilePath: [],
    users: [],
    certificates: [],
    essentialServices: [],
  );

  bool get isEmpty => this == ApplicationModel.empty;
  bool get isNotEmpty => this != ApplicationModel.empty;

  ApplicationModel copyWith({
    String? id,
    String? application,
    String? installPath,
    List<String>? logFilesPaths,
    List<int>? ports,
    List<String>? tempFilesPaths,
    List<String>? configFilesPaths,
    List<String>? xmlConfigFilePath,
    List<UserCredential>? users,
    List<CertificateModel>? certificates,
    List<String>? essentialServices,
  }) {
    return ApplicationModel(
      id: id ?? this.id,
      application: application ?? this.application,
      installPath: installPath ?? this.installPath,
      logFilesPaths: logFilesPaths ?? this.logFilesPaths,
      ports: ports ?? this.ports,
      tempFilesPaths: tempFilesPaths ?? this.tempFilesPaths,
      configFilesPaths: configFilesPaths ?? this.configFilesPaths,
      xmlConfigFilePath: xmlConfigFilePath ?? this.xmlConfigFilePath,
      users: users ?? this.users,
      certificates: certificates ?? this.certificates,
      essentialServices: essentialServices ?? this.essentialServices,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      '\$id': id,
      'application': application,
      'installPath': installPath,
      'logFilesPaths': logFilesPaths,
      'ports': ports,
      'tempFilesPaths': tempFilesPaths,
      'configFilesPaths': configFilesPaths,
      'xmlConfigFilePath': xmlConfigFilePath,
      'users': users.map((x) => x.toMap()).toList(),
      'certificates': certificates.map((x) => x.toMap()).toList(),
      'essentialServices': essentialServices,
    };
  }

  Map<String, dynamic> toDoc() {
    return {
      '\$id': id,
      'application': application,
      'installPath': installPath,
      'logFilesPaths': logFilesPaths,
      'ports': ports,
      'tempFilesPaths': tempFilesPaths,
      'configFilesPaths': configFilesPaths,
      'xmlConfigFilePath': xmlConfigFilePath,
      'users': users.map((x) => x.toMap()).toList(),
      'certificates': certificates.map((x) => x.toMap()).toList(),
      'essentialServices': essentialServices,
    };
  }

  Map<String, dynamic> toNewDoc() {
    return {
      'application': application,
      'installPath': installPath,
      'logFilesPaths': logFilesPaths,
      'ports': ports,
      'tempFilesPaths': tempFilesPaths,
      'configFilesPaths': configFilesPaths,
      'xmlConfigFilePath': xmlConfigFilePath,
      'users': users.map((x) => x.toMap()).toList(),
      'certificates': certificates.map((x) => x.toMap()).toList(),
      'essentialServices': essentialServices,
    };
  }

  factory ApplicationModel.fromMap(Map<String, dynamic> map) {
    return ApplicationModel(
      id: map['id'] ?? '',
      application: map['application'] ?? '',
      installPath: map['installPath'] ?? '',
      logFilesPaths: List<String>.from(map['logFilesPaths']),
      ports: List<int>.from(map['ports']),
      tempFilesPaths: List<String>.from(map['tempFilesPaths']),
      configFilesPaths: List<String>.from(map['configFilesPaths']),
      xmlConfigFilePath: List<String>.from(map['xmlConfigFilePath']),
      users: List<UserCredential>.from(map['users'].map((x) => UserCredential.fromMap(x))),
      certificates: List<CertificateModel>.from(map['certificates'].map((x) => CertificateModel.fromMap(x))),
      essentialServices: List<String>.from(map['essentialServices']),
    );
  }

  factory ApplicationModel.fromDoc(Document doc) {
    return ApplicationModel(
      id: doc.$id,
      application: doc.data['application'] ?? '',
      installPath: doc.data['installPath'] ?? '',
      logFilesPaths: List<String>.from(doc.data['logFilesPaths']),
      ports: List<int>.from(doc.data['ports']),
      tempFilesPaths: List<String>.from(doc.data['tempFilesPaths']),
      configFilesPaths: List<String>.from(doc.data['configFilesPaths']),
      xmlConfigFilePath: List<String>.from(doc.data['xmlConfigFilePath']),
      users: List<UserCredential>.from(doc.data['users'].map((x) => UserCredential.fromMap(x))),
      certificates: List<CertificateModel>.from(doc.data['certificates'].map((x) => CertificateModel.fromMap(x))),
      essentialServices: List<String>.from(doc.data['essentialServices']),
    );
  }

  String toJson() => json.encode(toMap());

  factory ApplicationModel.fromJson(String source) => ApplicationModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ApplicationModel(id: $id, application: $application, installPath: $installPath, logFilesPaths: $logFilesPaths, ports: $ports, tempFilesPaths: $tempFilesPaths, configFilesPaths: $configFilesPaths, xmlConfigFilePath: $xmlConfigFilePath, users: $users, certificates: $certificates, essentialServices: $essentialServices)';
  }
}

class UserCredential extends Equatable {
  final String id;
  final String userName;
  final String password;

  const UserCredential({
    required this.id,
    required this.userName,
    required this.password,
  });

  static const UserCredential empty = UserCredential(id: '', userName: '', password: '');

  bool get isEmpty => this == UserCredential.empty;
  bool get isNotEmpty => this != UserCredential.empty;

  UserCredential copyWith({
    String? id,
    String? userName,
    String? password,
  }) {
    return UserCredential(
      id: id ?? this.id,
      userName: userName ?? this.userName,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      '\$id': id,
      'userName': userName,
      'password': password,
    };
  }

  Map<String, dynamic> toDoc() {
    return {
      '\$id': id,
      'userName': userName,
      'password': password,
    };
  }

  Map<String, dynamic> toNewDoc() {
    return {
      'userName': userName,
      'password': password,
    };
  }

  factory UserCredential.fromMap(Map<String, dynamic> map) {
    return UserCredential(
      id: map['\$id'] ?? '',
      userName: map['userName'] ?? '',
      password: map['password'] ?? '',
    );
  }

  factory UserCredential.fromDoc(Document doc) {
    return UserCredential(
      id: doc.$id,
      userName: doc.data['userName'] ?? '',
      password: doc.data['password'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserCredential.fromJson(String source) => UserCredential.fromMap(json.decode(source));

  @override
  String toString() => 'UserCredential(id: $id, userName: $userName, password: $password)';

  @override
  List<Object> get props => [id, userName, password];
}
