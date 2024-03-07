import 'dart:convert';

import 'package:dart_appwrite/models.dart';
import 'package:equatable/equatable.dart';

import 'package:maintenance_config/enums/server_class.dart';
import 'package:maintenance_config/enums/server_data_center.dart';
import 'package:maintenance_config/enums/server_tier.dart';
import 'package:maintenance_config/enums/server_type.dart';
import 'package:maintenance_config/enums/system.dart';
import 'package:maintenance_config/enums/territory.dart';
import 'package:maintenance_config/models/application_model.dart';
import 'package:maintenance_config/models/basic_types.dart';
import 'package:maintenance_config/models/disk_model.dart';
import 'package:maintenance_config/models/memory_model.dart';
import 'package:maintenance_config/models/patch_model.dart';
import 'package:maintenance_config/models/processor_model.dart';

abstract class ServerModel with EquatableMixin {
  final String id;
  final String name;
  final String ip;
  final ServerTier tier;
  final ServerDataCenter dataCenter;
  final String os;
  final String osBuild;
  final String osVersion;
  final String motherboardManufacter;
  final String motherboardSerial;
  final String motherboardProductNumber;
  final List<ProcessorModel> processors;
  final List<MemoryModel> memory;
  final double memoryUsedCapacity;
  final double memoryMaxAllowedCapacity;
  final List<DiskModel> disks;
  final List<PatchModel> patches;
  final String? description;
  final String? location;
  final List<UserCredential> users;

  const ServerModel({
    required this.id,
    required this.name,
    required this.ip,
    this.tier = ServerTier.three,
    this.dataCenter = ServerDataCenter.PROD,
    required this.os,
    required this.osBuild,
    required this.osVersion,
    required this.motherboardManufacter,
    required this.motherboardSerial,
    required this.motherboardProductNumber,
    required this.processors,
    required this.memory,
    required this.memoryUsedCapacity,
    required this.memoryMaxAllowedCapacity,
    required this.disks,
    required this.patches,
    this.description,
    this.location,
    this.users = const <UserCredential>[],
  });

  @override
  List<Object?> get props {
    return [
      id,
      name,
      ip,
      tier,
      dataCenter,
      os,
      osBuild,
      osVersion,
      motherboardManufacter,
      motherboardSerial,
      motherboardProductNumber,
      processors,
      memory,
      memoryUsedCapacity,
      memoryMaxAllowedCapacity,
      disks,
      patches,
      description,
      location,
      users,
    ];
  }
}

class WindowsServerModel extends ServerModel with EquatableMixin {
  final String domain;
  final List<UserCredential> domainUsers;
  final Territory territory;
  final System system;
  final ServerClass serverClass;
  final ServerType serverType;
  final String? vip;
  final String? vpn;
  final List<String> backupPaths;
  final String? mediaServerIp;
  final List<String> mediaServerPaths;
  final List<String> essentialServices;
  final int databasePort;
  final bool hasTapeDrive;
  final List<ApplicationModel> applications;

  const WindowsServerModel({
    this.domain = 'local',
    this.domainUsers = const <UserCredential>[],
    this.territory = Territory.TT,
    required this.system,
    required this.serverClass,
    required this.serverType,
    this.vip,
    this.vpn,
    this.backupPaths = const <String>[],
    this.mediaServerIp,
    this.mediaServerPaths = const <String>[],
    this.essentialServices = const <String>[],
    this.databasePort = 0,
    this.hasTapeDrive = false,
    this.applications = const <ApplicationModel>[],
    required super.id,
    required super.name,
    super.description,
    super.location,
    required super.ip,
    super.tier,
    required super.dataCenter,
    required super.os,
    required super.osBuild,
    required super.osVersion,
    required super.motherboardManufacter,
    required super.motherboardSerial,
    required super.motherboardProductNumber,
    required super.processors,
    required super.memory,
    required super.memoryUsedCapacity,
    required super.memoryMaxAllowedCapacity,
    required super.disks,
    required super.patches,
    super.users,
  });

  @override
  List<Object?> get props {
    return [
      domain,
      domainUsers,
      territory,
      system,
      serverClass,
      serverType,
      vip,
      vpn,
      backupPaths,
      mediaServerIp,
      mediaServerPaths,
      essentialServices,
      databasePort,
      hasTapeDrive,
      applications,
    ];
  }

  static const WindowsServerModel empty = WindowsServerModel(
      id: '',
      name: '',
      ip: '',
      system: System.UNKNOWN,
      serverClass: ServerClass.UNKNOWN,
      serverType: ServerType.UNKNOWN,
      dataCenter: ServerDataCenter.UNKNOWN,
      os: '',
      osBuild: '',
      osVersion: '',
      motherboardManufacter: '',
      motherboardSerial: '',
      motherboardProductNumber: '',
      processors: [],
      memory: [],
      memoryUsedCapacity: 0.0,
      memoryMaxAllowedCapacity: 0.0,
      disks: [],
      patches: [],
    );

  bool get isEmpty => this == WindowsServerModel.empty;
  bool get isNotEmpty => this != WindowsServerModel.empty;

  WindowsServerModel copyWith({
    String? id,
    String? name,
    String? ip,
    ServerTier? tier,
    ServerDataCenter? dataCenter,
    String? os,
    String? osBuild,
    String? osVersion,
    String? motherboardManufacter,
    String? motherboardSerial,
    String? motherboardProductNumber,
    List<ProcessorModel>? processors,
    List<MemoryModel>? memory,
    double? memoryUsedCapacity,
    double? memoryMaxAllowedCapacity,
    List<DiskModel>? disks,
    List<PatchModel>? patches,
    ValueGetter<String?>? description,
    ValueGetter<String?>? location,
    List<UserCredential>? users,
    String? domain,
    List<UserCredential>? domainUsers,
    Territory? territory,
    System? system,
    ServerClass? serverClass,
    ServerType? serverType,
    ValueGetter<String?>? vip,
    ValueGetter<String?>? vpn,
    List<String>? backupPaths,
    ValueGetter<String?>? mediaServerIp,
    List<String>? mediaServerPaths,
    List<String>? essentialServices,
    int? databasePort,
    bool? hasTapeDrive,
    List<ApplicationModel>? applications,
  }) {
    return WindowsServerModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description != null ? description() : this.description,
      location: location != null ? location() : this.location,
      ip: ip ?? this.ip,
      tier: tier ?? this.tier,
      dataCenter: dataCenter ?? this.dataCenter,
      os: os ?? this.os,
      osBuild: osBuild ?? this.osBuild,
      osVersion: osVersion ?? this.osVersion,
      users: users ?? this.users,
      motherboardManufacter: motherboardManufacter ?? this.motherboardManufacter,
      motherboardSerial: motherboardSerial ?? this.motherboardSerial,
      motherboardProductNumber: motherboardProductNumber ?? this.motherboardProductNumber,
      processors: processors ?? this.processors,
      memory: memory ?? this.memory,
      memoryUsedCapacity: memoryUsedCapacity ?? this.memoryUsedCapacity,
      memoryMaxAllowedCapacity: memoryMaxAllowedCapacity ?? this.memoryMaxAllowedCapacity,
      disks: disks ?? this.disks,
      patches: patches ?? this.patches,
      domain: domain ?? this.domain,
      domainUsers: domainUsers ?? this.domainUsers,
      territory: territory ?? this.territory,
      system: system ?? this.system,
      serverClass: serverClass ?? this.serverClass,
      serverType: serverType ?? this.serverType,
      vip: vip != null ? vip() : this.vip,
      vpn: vpn != null ? vpn() : this.vpn,
      backupPaths: backupPaths ?? this.backupPaths,
      mediaServerIp: mediaServerIp != null ? mediaServerIp() : this.mediaServerIp,
      mediaServerPaths: mediaServerPaths ?? this.mediaServerPaths,
      essentialServices: essentialServices ?? this.essentialServices,
      databasePort: databasePort ?? this.databasePort,
      hasTapeDrive: hasTapeDrive ?? this.hasTapeDrive,
      applications: applications ?? this.applications,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      '\$id': id,
      'name': name,
      'description': description,
      'location': location,
      'ip': ip,
      'tier': tier.name,
      'dataCenter': dataCenter.name,
      'os': os,
      'osBuild': osBuild,
      'osVersion': osVersion,
      'users': users.map((x) => x.toMap()).toList(),
      'motherboardManufacter': motherboardManufacter,
      'motherboardSerial': motherboardSerial,
      'motherboardProductNumber': motherboardProductNumber,
      'processors': processors.map((x) => x.toMap()).toList(),
      'memory': memory.map((x) => x.toMap()).toList(),
      'memoryUsedCapacity': memoryUsedCapacity,
      'memoryMaxAllowedCapacity': memoryMaxAllowedCapacity,
      'disks': disks.map((x) => x.toMap()).toList(),
      'patches': disks.map((x) => x.toMap()).toList(),
      'domain': domain,
      'domainUsers': domainUsers.map((x) => x.toMap()).toList(),
      'territory': territory.name,
      'system': system.name,
      'serverClass': serverClass.name,
      'serverType': serverType.name,
      'vip': vip,
      'vpn': vpn,
      'backupPaths': backupPaths,
      'mediaServerIp': mediaServerIp,
      'mediaServerPaths': mediaServerPaths,
      'essentialServices': essentialServices,
      'databasePort': databasePort,
      'hasTapeDrive': hasTapeDrive,
      'applications': applications.map((x) => x.toMap()).toList(),
    };
  }

  Map<String, dynamic> toDoc() {
    return {
      '\$id': id,
      'name': name,
      'description': description,
      'location': location,
      'ip': ip,
      'tier': tier.name,
      'dataCenter': dataCenter.name,
      'os': os,
      'osBuild': osBuild,
      'osVersion': osVersion,
      'users': users.map((x) => x.toMap()).toList(),
      'motherboardManufacter': motherboardManufacter,
      'motherboardSerial': motherboardSerial,
      'motherboardProductNumber': motherboardProductNumber,
      'processors': processors.map((x) => x.toMap()).toList(),
      'memory': memory.map((x) => x.toMap()).toList(),
      'memoryUsedCapacity': memoryUsedCapacity,
      'memoryMaxAllowedCapacity': memoryMaxAllowedCapacity,
      'disks': disks.map((x) => x.toMap()).toList(),
      'patches': disks.map((x) => x.toMap()).toList(),
      'domain': domain,
      'domainUsers': domainUsers.map((x) => x.toMap()).toList(),
      'territory': territory.name,
      'system': system.name,
      'serverClass': serverClass.name,
      'serverType': serverType.name,
      'vip': vip,
      'vpn': vpn,
      'backupPaths': backupPaths,
      'mediaServerIp': mediaServerIp,
      'mediaServerPaths': mediaServerPaths,
      'essentialServices': essentialServices,
      'databasePort': databasePort,
      'hasTapeDrive': hasTapeDrive,
      'applications': applications.map((x) => x.toMap()).toList(),
    };
  }

  Map<String, dynamic> toNewDoc() {
    return {
      'name': name,
      'description': description,
      'location': location,
      'ip': ip,
      'tier': tier.name,
      'dataCenter': dataCenter.name,
      'os': os,
      'osBuild': osBuild,
      'osVersion': osVersion,
      'users': users.map((x) => x.toMap()).toList(),
      'motherboardManufacter': motherboardManufacter,
      'motherboardSerial': motherboardSerial,
      'motherboardProductNumber': motherboardProductNumber,
      'processors': processors.map((x) => x.toMap()).toList(),
      'memory': memory.map((x) => x.toMap()).toList(),
      'memoryUsedCapacity': memoryUsedCapacity,
      'memoryMaxAllowedCapacity': memoryMaxAllowedCapacity,
      'disks': disks.map((x) => x.toMap()).toList(),
      'patches': disks.map((x) => x.toMap()).toList(),
      'domain': domain,
      'domainUsers': domainUsers.map((x) => x.toMap()).toList(),
      'territory': territory.name,
      'system': system.name,
      'serverClass': serverClass.name,
      'serverType': serverType.name,
      'vip': vip,
      'vpn': vpn,
      'backupPaths': backupPaths,
      'mediaServerIp': mediaServerIp,
      'mediaServerPaths': mediaServerPaths,
      'essentialServices': essentialServices,
      'databasePort': databasePort,
      'hasTapeDrive': hasTapeDrive,
      'applications': applications.map((x) => x.toMap()).toList(),
    };
  }

  factory WindowsServerModel.fromMap(Map<String, dynamic> map) {
    return WindowsServerModel(
      id: map['\$id'],
      name: map['name'],
      description: map['description'],
      location: map['location'],
      ip: map['ip'],
      tier: ServerTier.values.firstWhere((e) => e.toString() == 'ServerTier.${map['tier']}'),
      dataCenter: ServerDataCenter.values.firstWhere((e) => e.toString() == 'ServerDataCenter.${map['dataCenter']}'),
      os: map['os'],
      osBuild: map['osBuild'],
      osVersion: map['osVersion'],
      users: List<UserCredential>.from(map['users']?.map((x) => UserCredential.fromMap(x))),
      motherboardManufacter: map['motherboardManufacter'],
      motherboardSerial: map['motherboardSerial'],
      motherboardProductNumber: map['motherboardProductNumber'],
      processors: List<ProcessorModel>.from(map['processors']?.map((x) => ProcessorModel.fromMap(x))),
      memory: List<MemoryModel>.from(map['memory']?.map((x) => MemoryModel.fromMap(x))),
      memoryUsedCapacity: map['memoryUsedCapacity']?.toDouble() ?? 0.0,
      memoryMaxAllowedCapacity: map['memoryMaxAllowedCapacity']?.toDouble() ?? 0.0,
      disks: List<DiskModel>.from(map['disks']?.map((x) => DiskModel.fromMap(x))),
      patches: List<PatchModel>.from(map['patches']?.map((x) => PatchModel.fromMap(x))),
      domain: map['domain'] ?? '',
      domainUsers: List<UserCredential>.from(map['domainUsers']?.map((x) => UserCredential.fromMap(x))),
      territory: Territory.values.firstWhere((e) => e.toString() == 'Territory.${map['territory']}'),
      system: System.values.firstWhere((e) => e.toString() == 'System.${map['system']}'),
      serverClass: ServerClass.values.firstWhere((e) => e.toString() == 'ServerClass.${map['serverClass']}'),
      serverType: ServerType.values.firstWhere((e) => e.toString() == 'ServerType.${map['serverType']}'),
      vip: map['vip'],
      vpn: map['vpn'],
      backupPaths: List<String>.from(map['backupPaths']),
      mediaServerIp: map['mediaServerIp'],
      mediaServerPaths: List<String>.from(map['mediaServerPaths']),
      essentialServices: List<String>.from(map['essentialServices']),
      databasePort: map['databasePort']?.toInt() ?? 0,
      hasTapeDrive: map['hasTapeDrive'] ?? false,
      applications: List<ApplicationModel>.from(map['applications']?.map((x) => ApplicationModel.fromMap(x))),
    );
  }

  factory WindowsServerModel.fromDoc(Document doc) {
    return WindowsServerModel(
      id: doc.$id,
      name: doc.data['name'],
      description: doc.data['description'],
      location: doc.data['location'],
      ip: doc.data['ip'],
      tier: ServerTier.values.firstWhere((e) => e.toString() == 'ServerTier.${doc.data['tier']}'),
      dataCenter: ServerDataCenter.values.firstWhere((e) => e.toString() == 'ServerDataCenter.${doc.data['dataCenter']}'),
      os: doc.data['os'],
      osBuild: doc.data['osBuild'],
      osVersion: doc.data['osVersion'],
      users: List<UserCredential>.from(doc.data['users']?.map((x) => UserCredential.fromMap(x))),
      motherboardManufacter: doc.data['motherboardManufacter'],
      motherboardSerial: doc.data['motherboardSerial'],
      motherboardProductNumber: doc.data['motherboardProductNumber'],
      processors: List<ProcessorModel>.from(doc.data['processors']?.map((x) => ProcessorModel.fromMap(x))),
      memory: List<MemoryModel>.from(doc.data['memory']?.map((x) => MemoryModel.fromMap(x))),
      memoryUsedCapacity: doc.data['memoryUsedCapacity']?.toDouble() ?? 0.0,
      memoryMaxAllowedCapacity: doc.data['memoryMaxAllowedCapacity']?.toDouble() ?? 0.0,
      disks: List<DiskModel>.from(doc.data['disks']?.map((x) => DiskModel.fromMap(x))),
      patches: List<PatchModel>.from(doc.data['patches']?.map((x) => PatchModel.fromMap(x))),
      domain: doc.data['domain'] ?? '',
      domainUsers: List<UserCredential>.from(doc.data['domainUsers']?.map((x) => UserCredential.fromMap(x))),
      territory: Territory.values.firstWhere((e) => e.toString() == 'Territory.${doc.data['territory']}'),
      system: System.values.firstWhere((e) => e.toString() == 'System.${doc.data['system']}'),
      serverClass: ServerClass.values.firstWhere((e) => e.toString() == 'ServerClass.${doc.data['serverClass']}'),
      serverType: ServerType.values.firstWhere((e) => e.toString() == 'ServerType.${doc.data['serverType']}'),
      vip: doc.data['vip'],
      vpn: doc.data['vpn'],
      backupPaths: List<String>.from(doc.data['backupPaths']),
      mediaServerIp: doc.data['mediaServerIp'],
      mediaServerPaths: List<String>.from(doc.data['mediaServerPaths']),
      essentialServices: List<String>.from(doc.data['essentialServices']),
      databasePort: doc.data['databasePort']?.toInt() ?? 0,
      hasTapeDrive: doc.data['hasTapeDrive'] ?? false,
      applications: List<ApplicationModel>.from(doc.data['applications']?.map((x) => ApplicationModel.fromMap(x))),
    );
  }

  factory WindowsServerModel.fromPS(Map<String, dynamic> map) {
    return WindowsServerModel(
      id: '',
      name: map['SystemName'],
      ip: map['IP'],
      dataCenter: ServerDataCenter.values.firstWhere((e) => e.toString() == 'ServerDataCenter.${getDatacenter(map['SystemName'])}'),
      os: map['OS'],
      osBuild: map['BuildNumber'],
      osVersion: map['Version'],
      users: <UserCredential>[],
      motherboardManufacter: map['MotherBoardManufacturer'],
      motherboardSerial: map['MotherBoardSerialNumber'],
      motherboardProductNumber: map['MotherBoardProductNumber'],
      processors: List<ProcessorModel>.from(map['Processors']?.map((x) => ProcessorModel.fromPS(x))),
      memory: List<MemoryModel>.from(map['Memory']?.map((x) => MemoryModel.fromPS(x))),
      memoryUsedCapacity: map['TotalUsedMemoryCapacityGB']?.toDouble() ?? 0.0,
      memoryMaxAllowedCapacity: map['MaxMemoryCapacityGB']?.toDouble() ?? 0.0,
      disks: List<DiskModel>.from(map['Disks']?.map((x) => DiskModel.fromPS(x))),
      patches: List<PatchModel>.from(map['InstalledPatches']?.map((x) => PatchModel.fromPS(x))),
      domainUsers: <UserCredential>[],
      territory: Territory.values.firstWhere((e) => e.toString() == 'Territory.${getTerritory(map['SystemName'])}'),
      system: getSystem(map['SystemName']),
      serverClass: ServerClass.values.firstWhere((e) => e.toString() == 'ServerClass.${getClass(map['SystemName'])}'),
      serverType: ServerType.values.firstWhere((e) => e.toString() == 'ServerType.${getType(map['SystemName'])}'),
      backupPaths: [],
      mediaServerPaths: [],
      essentialServices: [],
      applications: <ApplicationModel>[],
    );
  }

  String toJson() => json.encode(toMap());

  factory WindowsServerModel.fromJson(String source) => WindowsServerModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'WindowsServerModel(id: $id, name: $name, ip: $ip, tier: $tier, dataCenter: $dataCenter, os: $os, osBuild: $osBuild, osVersion: $osVersion, motherboardManufacter: $motherboardManufacter, motherboardSerial: $motherboardSerial, motherboardProductNumber: $motherboardProductNumber, processors: $processors, memory: $memory, memoryUsedCapacity: $memoryUsedCapacity, memoryMaxAllowedCapacity: $memoryMaxAllowedCapacity, disks: $disks, patches: $patches, description: $description, location: $location, users: $users, domain: $domain, domainUsers: $domainUsers, territory: $territory, system: $system, serverClass: $serverClass, serverType: $serverType, vip: $vip, vpn: $vpn, backupPaths: $backupPaths, mediaServerIp: $mediaServerIp, mediaServerPaths: $mediaServerPaths, essentialServices: $essentialServices, databasePort: $databasePort, hasTapeDrive: $hasTapeDrive, applications: $applications)';
  }
}

String getTerritory(String serverName) {
  Set<String> segments = serverName.split('-').map((e) => e.toLowerCase()).toSet();
  Set<String> foundTerritory = segments.intersection(Territory.values.map((e) => e.name.toLowerCase()).toSet());
  if (foundTerritory.isNotEmpty) {
    if (foundTerritory.first.contains('sub')) {
      return Territory.SUBS.name.toUpperCase();
    }
    if (foundTerritory.first == 'sur') {
      return Territory.SR.name.toUpperCase();
    }
    return foundTerritory.first.toUpperCase();
  } else {
    return Territory.MULTI.name.toUpperCase();
  }
}

System getSystem(String serverName) {
  Set<String> segments = serverName.split('-').map((e) => e.toLowerCase()).toSet();
  Set<String> foundSystem = segments.intersection(System.values.map((e) => e.name.toLowerCase()).toSet());
  if (foundSystem.isNotEmpty) {
    String system = foundSystem.first;
    if (system == 'icbanking' || system == 'icbnk' || system == 'icbk') {
      return System.ICBANKING;
    }
    if (system == 'phoenix' || system == 'phx') {
      return System.PHOENIX;
    }
    if (system == 'internetbanking' || system == 'ib' || system == 'ibmb') {
      return System.INTERNETBANKING;
    }
    if (system == 'entrust' || system == 'idg') {
      return System.ENTRUST;
    }
    if (system == 'cardwizard' || system == 'cardwiz' || system == 'crdwiz' || system == 'wiz') {
      return System.CARDWIZARD;
    }
    if (system == 'paybank' || system == 'pbnk') {
      return System.PAYBANK;
    }
    if (system == 'paycorp' || system == 'pcor' || system == 'pcrp') {
      return System.PAYCORP;
    }
    if (system == 'dc' || system == 'prodtt') {
      return System.DC;
    }
    if (system == 'crystalreports' || system == 'crystal' || system == 'cr') {
      return System.CRYSTALREPORTS;
    }
    if (system == 'pst' || system == 'ps') {
      return System.PST;
    }
    return System.values.firstWhere((element) => element.name == system.toUpperCase());
  } else {
    return System.UNKNOWN;
  }
}

String getType(String serverName) {
  Set<String> segments = serverName.split('-').map((e) => e.toLowerCase()).toSet();
  Set<String> foundType = segments.intersection(ServerType.values.map((e) => e.name.toLowerCase()).toSet());
  if (foundType.isNotEmpty) {
    if (foundType.first.contains('db')) {
      return ServerType.DBS.name.toUpperCase();
    }
    if (foundType.first.contains('file')) {
      return ServerType.FILESERVER.name.toUpperCase();
    }
    if (foundType.first == 'cardwizard' || foundType.first == 'cardwiz' || foundType.first == 'crdwiz' || foundType.first == 'wiz') {
      return ServerType.APP.name.toUpperCase();
    }
    if (foundType.first == 'app' || foundType.first == 'app1' || foundType.first == 'app2') {
      return ServerType.APP.name.toUpperCase();
    }
    return foundType.first.toUpperCase();
  } else {
    return ServerType.UNKNOWN.name.toUpperCase();
  }
}

String getClass(String serverName) {
  Set<String> segments = serverName.split('-').map((e) => e.toLowerCase()).toSet();
  if (segments.last == '1') {
    return ServerClass.PRIM.name.toUpperCase();
  }
  if (segments.last == 'prod') {
    return ServerClass.PRIM.name.toUpperCase();
  }
  if (segments.last == '2') {
    return ServerClass.STBY.name.toUpperCase();
  }
  Set<String> foundClass = segments.intersection(ServerClass.values.map((e) => e.name.toLowerCase()).toSet());
  if (foundClass.isNotEmpty) {
    String dataCenter = foundClass.first;
    if (dataCenter == 'prim' || dataCenter == 'prd' || dataCenter == 'p1' || dataCenter == 'b1') {
      return ServerClass.PRIM.name.toUpperCase();
    }
    if (dataCenter == 'stby' || dataCenter == 'bkup' || dataCenter == 'p2' || dataCenter == 'b2') {
      return ServerClass.STBY.name.toUpperCase();
    }
    return ServerClass.UNKNOWN.name.toUpperCase();
  } else {
    return ServerClass.UNKNOWN.name.toUpperCase();
  }
}

String getDatacenter(String serverName) {
  Set<String> segments = serverName.split('-').map((e) => e.toLowerCase()).toSet();
  Set<String> foundDataCenter = segments.intersection(ServerDataCenter.values.map((e) => e.name.toLowerCase()).toSet());
  if (foundDataCenter.isNotEmpty) {
    if (foundDataCenter.length == 1) {
      String dataCenter = foundDataCenter.first;
      if (dataCenter == 'prod' ||
          dataCenter == 'p1' ||
          dataCenter == 'p2' ||
          dataCenter == 'p3' ||
          dataCenter == 'p4' ||
          dataCenter == 'p5' ||
          dataCenter == 'p6' ||
          dataCenter == 'prim' ||
          dataCenter == 'prd' ||
          dataCenter == 'pre1' ||
          dataCenter == 'pre2' ||
          dataCenter == 'stby' ||
          dataCenter == 'dbs1' ||
          dataCenter == 'bkup') {
        return ServerDataCenter.PROD.name.toUpperCase();
      }
      if (dataCenter == 'bcp' || dataCenter == 'b1' || dataCenter == 'b2' || dataCenter == 'b3' || dataCenter == 'b4' || dataCenter == 'b5' || dataCenter == 'b6' || dataCenter == 'dbs2') {
        return ServerDataCenter.BCP.name.toUpperCase();
      }
      return ServerDataCenter.UNKNOWN.name.toUpperCase();
    } else {
      if (foundDataCenter.contains('prod')) {
        return ServerDataCenter.PROD.name.toUpperCase();
      }
      if (foundDataCenter.contains('bcp')) {
        return ServerDataCenter.BCP.name.toUpperCase();
      }
      return ServerDataCenter.UNKNOWN.name.toUpperCase();
    }
  } else {
    return ServerDataCenter.UNKNOWN.name.toUpperCase();
  }
}

// abstract class AIXServerModel extends ServerModel {}
// abstract class UbuntuServerModel extends ServerModel {}

// class WindowsDatabaseServerModel extends WindowsServerModel {
//   final String? vip;
//   final String? vpn;
//   final List<String> backupPaths;
//   final String? mediaServerIp;
//   final List<String> mediaServerPaths;
//   final List<String> essentialServices;
//   final int databasePort;
//   final bool hasTapeDrive;
//   final List<ApplicationModel> applications;

//   const WindowsDatabaseServerModel({
//     this.vip,
//     this.vpn,
//     required this.backupPaths,
//     this.mediaServerIp,
//     required this.mediaServerPaths,
//     required this.essentialServices,
//     this.databasePort = 0,
//     this.hasTapeDrive = false,
//     required super.id,
//     required super.name,
//     required super.ip,
//     super.tier,
//     super.desc,
//     super.location,
//     required super.serial,
//     required super.osBuild,
//     required super.users,
//     required super.domain,
//     required super.domainUsers,
//     required super.territory,
//     required super.system,
//     required super.serverClass,
//     required super.serverType,
//   });

//   static const WindowsDatabaseServerModel empty = WindowsDatabaseServerModel(
//       id: 0,
//       name: '',
//       ip: '',
//       tier: ServerTier.three,
//       serial: '',
//       osBuild: '',
//       desc: '',
//       location: '',
//       users: [],
//       domain: 'local',
//       domainUsers: [],
//       territory: Territory.TT,
//       system: System.ManageEngine,
//       serverClass: ServerClass.test,
//       serverType: ServerType.application,
//       vip: '',
//       vpn: '',
//       backupPaths: [],
//       mediaServerIp: '',
//       mediaServerPaths: [],
//       essentialServices: [],
//       databasePort: 0,
//       hasTapeDrive: false);

//   bool get isEmpty => this == WindowsDatabaseServerModel.empty;
//   bool get isNotEmpty => this != WindowsDatabaseServerModel.empty;

//   @override
//   List<Object?> get props => super.props
//     ..addAll([
//       vip,
//       vpn,
//       backupPaths,
//       mediaServerIp,
//       mediaServerPaths,
//       essentialServices,
//       databasePort,
//       hasTapeDrive,
//     ]);
// }

// class ApplicationServerModel extends WindowsServerModel {
//   final List<ApplicationModel> applications;

//   const ApplicationServerModel({
//     required this.applications,
//     required super.id,
//     required super.name,
//     required super.ip,
//     super.tier,
//     super.desc,
//     super.location,
//     required super.serial,
//     required super.osBuild,
//     required super.users,
//     required super.domain,
//     required super.domainUsers,
//     required super.territory,
//     required super.system,
//     required super.serverClass,
//     required super.serverType,
//   });

//   static const ApplicationServerModel empty = ApplicationServerModel(
//     id: 0,
//     name: '',
//     ip: '',
//     tier: ServerTier.three,
//     serial: '',
//     osBuild: '',
//     desc: '',
//     location: '',
//     users: [],
//     domain: 'local',
//     domainUsers: [],
//     territory: Territory.TT,
//     system: System.ManageEngine,
//     serverClass: ServerClass.test,
//     serverType: ServerType.application,
//     applications: [],
//   );

//   bool get isEmpty => this == ApplicationServerModel.empty;
//   bool get isNotEmpty => this != ApplicationServerModel.empty;

//   @override
//   List<Object?> get props => super.props..addAll([applications]);
// }

// class FileServerModel extends ServerModel with EquatableMixin {
//   final List<ApplicationModel> applications;
//   FileServerModel({
//     required this.applications,
//     required super.id,
//     required super.name,
//     required super.ip,
//     required super.serial,
//     required super.osBuild,
//     required super.username,
//     required super.password,
//     required super.domain,
//   });

//   @override
//   List<Object> get props => [applications];
// }

// class WebServerModel extends ServerModel with EquatableMixin {
//   final List<ApplicationModel> applications;
//   WebServerModel({
//     required this.applications,
//     required super.id,
//     required super.name,
//     required super.ip,
//     required super.serial,
//     required super.osBuild,
//     required super.username,
//     required super.password,
//     required super.domain,
//   });

//   @override
//   List<Object> get props => [applications];
// }

// class XMServerModel extends ServerModel with EquatableMixin {
//   final String installPath;
//   final List<String> xmlConfigFilePath;
//   final List<String> essentialServices;

//   XMServerModel({
//     required this.installPath,
//     required this.xmlConfigFilePath,
//     required this.essentialServices,
//     required super.id,
//     required super.name,
//     required super.ip,
//     required super.domain,
//     required super.serial,
//     required super.osBuild,
//     required super.username,
//     required super.password,
//   });

//   @override
//   List<Object> get props => [installPath, xmlConfigFilePath, essentialServices];
// }

// class MediaServerModel extends WindowsServerModel {
//   final String? vpn;

//   const MediaServerModel({
//     this.vpn,
//     required super.id,
//     required super.name,
//     required super.ip,
//     super.tier,
//     super.desc,
//     super.location,
//     required super.domain,
//     required super.serial,
//     required super.osBuild,
//     required super.users,
//     required super.domainUsers,
//     required super.territory,
//     required super.system,
//     required super.serverClass,
//     required super.serverType,
//   });

//   static const MediaServerModel empty = MediaServerModel(
//     id: 0,
//     name: '',
//     ip: '',
//     tier: ServerTier.three,
//     serial: '',
//     osBuild: '',
//     desc: '',
//     location: '',
//     users: [],
//     domain: 'local',
//     domainUsers: [],
//     territory: Territory.TT,
//     system: System.ManageEngine,
//     serverClass: ServerClass.test,
//     serverType: ServerType.application,
//     vpn: '',
//   );

//   bool get isEmpty => this == MediaServerModel.empty;
//   bool get isNotEmpty => this != MediaServerModel.empty;

//   @override
//   List<Object?> get props => super.props..addAll([vpn]);
// }

// class ESXIHostServerModel extends ServerModel {
//   List<VirtualMachineModel> virtualMachines;
//   ESXIHostServerModel({
//     required this.virtualMachines,
//     required super.id,
//     required super.name,
//     required super.ip,
//     required super.domain,
//     required super.serial,
//     required super.osBuild,
//     required super.username,
//     required super.password,
//   });
// }

// class VirtualMachineModel extends Equatable {
//   final String id;
//   final String name;
//   final String ip;

//   VirtualMachineModel({
//     required this.id,
//     required this.name,
//     required this.ip,
//   });

//   @override
//   List<Object> get props => [id, name, ip];
// }
