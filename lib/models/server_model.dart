// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:equatable/equatable.dart';

// import 'package:maintenance_config/enums/server_class.dart';
// import 'package:maintenance_config/enums/server_type.dart';
// import 'package:maintenance_config/enums/system.dart';
// import 'package:maintenance_config/enums/territory.dart';
// import 'package:maintenance_config/models/application_model.dart';
// import 'package:maintenance_config/models/disk_model.dart';
// import 'package:maintenance_config/models/memory_model.dart';
// import 'package:maintenance_config/models/patch_model.dart';
// import 'package:maintenance_config/models/processor_model.dart';

// abstract class ServerModel with EquatableMixin {
//   final int id;
//   final String name;
//   final String ip;
//   final String serial;
//   final String os;
//   final String osBuild;
//   final String osVersion;
//   final String motherboardManufacter;
//   final String motherboardSerial;
//   final String motherboardProductNumber;
//   final List<ProcessorModel> processors;
//   final List<MemoryModel> memory;
//   final int memoryUsedCapacity;
//   final int memoryMaxAllowedCapacity;
//   final List<DiskModel> disks;
//   final List<PatchModel> patches;
//   final String? desc;
//   final String? location;
//   final String username;
//   final String password;
  
//   ServerModel({
//     required this.id,
//     required this.name,
//     required this.ip,
//     required this.serial,
//     required this.os,
//     required this.osBuild,
//     required this.osVersion,
//     required this.motherboardManufacter,
//     required this.motherboardSerial,
//     required this.motherboardProductNumber,
//     required this.processors,
//     required this.memory,
//     required this.memoryUsedCapacity,
//     required this.memoryMaxAllowedCapacity,
//     required this.disks,
//     required this.patches,
//     this.desc,
//     this.location,
//     required this.username,
//     required this.password,
//   });

  

//   @override
//   String toString() {
//     return 'ServerModel(id: $id, name: $name, ip: $ip, serial: $serial, os: $os, osBuild: $osBuild, osVersion: $osVersion, motherboardManufacter: $motherboardManufacter, motherboardSerial: $motherboardSerial, motherboardProductNumber: $motherboardProductNumber, processors: $processors, memory: $memory, memoryUsedCapacity: $memoryUsedCapacity, memoryMaxAllowedCapacity: $memoryMaxAllowedCapacity, disks: $disks, patches: $patches, desc: $desc, location: $location, username: $username, password: $password)';
//   }

//   @override
//   List<Object?> get props {
//     return [
//       id,
//       name,
//       ip,
//       serial,
//       os,
//       osBuild,
//       osVersion,
//       motherboardManufacter,
//       motherboardSerial,
//       motherboardProductNumber,
//       processors,
//       memory,
//       memoryUsedCapacity,
//       memoryMaxAllowedCapacity,
//       disks,
//       patches,
//       desc,
//       location,
//       username,
//       password,
//     ];
//   }
// }

// abstract class WindowsServerModel extends ServerModel with EquatableMixin {
//   final String domain;
//   final Territory territory;
//   final System system;
//   final ServerClass serverClass;
//   final ServerType serverType;

//   const WindowsServerModel({
//     this.domain = 'local',
//     this.territory = Territory.TT,
//     required this.system,
//     required this.serverClass,
//     required this.serverType,
//     required super.id,
//     required super.name,
//     super.desc,
//     super.location,
//     required super.ip,
//     required super.serial,
//     required super.osBuild,
//     required super.username,
//     required super.password,
//   });

//   @override
//   List<Object?> get props {
//     return [
//       domain,
//       territory,
//       system,
//       serverClass,
//       serverType,
//     ];
//   }
// }

// // abstract class AIXServerModel extends ServerModel {}
// // abstract class UbuntuServerModel extends ServerModel {}

// class WindowsDatabaseServerModel extends WindowsServerModel {
//   final String? vip;
//   final String? vpn;
//   final List<String> backupPaths;
//   final String? mediaServerIp;
//   final List<String> mediaServerPaths;
//   final List<String> essentialServices;
//   final int databasePort;
//   final bool hasTapeDrive;

//   const WindowsDatabaseServerModel({
//     this.vip,
//     this.vpn,
//     required this.backupPaths,
//     this.mediaServerIp,
//     required this.mediaServerPaths,
//     required this.essentialServices,
//     required this.databasePort,
//     required this.hasTapeDrive,
//     required super.id,
//     required super.name,
//     required super.ip,
//     super.desc,
//     super.location,
//     required super.serial,
//     required super.osBuild,
//     required super.username,
//     required super.password,
//     required super.domain,
//     required super.territory,
//     required super.system,
//     required super.serverClass,
//     required super.serverType,
//   });

//   static const WindowsDatabaseServerModel empty = WindowsDatabaseServerModel(
//       id: 0,
//       name: '',
//       ip: '',
//       serial: '',
//       osBuild: '',
//       desc: '',
//       location: '',
//       username: '',
//       password: '',
//       domain: 'local',
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
//     super.desc,
//     super.location,
//     required super.serial,
//     required super.osBuild,
//     required super.username,
//     required super.password,
//     required super.domain,
//     required super.territory,
//     required super.system,
//     required super.serverClass,
//     required super.serverType,
//   });

//   static const ApplicationServerModel empty = ApplicationServerModel(
//     id: 0,
//     name: '',
//     ip: '',
//     serial: '',
//     osBuild: '',
//     desc: '',
//     location: '',
//     username: '',
//     password: '',
//     domain: 'local',
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

// // class FileServerModel extends ServerModel with EquatableMixin {
// //   final List<ApplicationModel> applications;
// //   FileServerModel({
// //     required this.applications,
// //     required super.id,
// //     required super.name,
// //     required super.ip,
// //     required super.serial,
// //     required super.osBuild,
// //     required super.username,
// //     required super.password,
// //     required super.domain,
// //   });

// //   @override
// //   List<Object> get props => [applications];
// // }

// // class WebServerModel extends ServerModel with EquatableMixin {
// //   final List<ApplicationModel> applications;
// //   WebServerModel({
// //     required this.applications,
// //     required super.id,
// //     required super.name,
// //     required super.ip,
// //     required super.serial,
// //     required super.osBuild,
// //     required super.username,
// //     required super.password,
// //     required super.domain,
// //   });

// //   @override
// //   List<Object> get props => [applications];
// // }

// // class XMServerModel extends ServerModel with EquatableMixin {
// //   final String installPath;
// //   final List<String> xmlConfigFilePath;
// //   final List<String> essentialServices;

// //   XMServerModel({
// //     required this.installPath,
// //     required this.xmlConfigFilePath,
// //     required this.essentialServices,
// //     required super.id,
// //     required super.name,
// //     required super.ip,
// //     required super.domain,
// //     required super.serial,
// //     required super.osBuild,
// //     required super.username,
// //     required super.password,
// //   });

// //   @override
// //   List<Object> get props => [installPath, xmlConfigFilePath, essentialServices];
// // }

// class MediaServerModel extends WindowsServerModel {
//   final String? vpn;

//   const MediaServerModel({
//     this.vpn,
//     required super.id,
//     required super.name,
//     required super.ip,
//     super.desc,
//     super.location,
//     required super.domain,
//     required super.serial,
//     required super.osBuild,
//     required super.username,
//     required super.password,
//     required super.territory,
//     required super.system,
//     required super.serverClass,
//     required super.serverType,
//   });

//   static const MediaServerModel empty = MediaServerModel(
//     id: 0,
//     name: '',
//     ip: '',
//     serial: '',
//     osBuild: '',
//     desc: '',
//     location: '',
//     username: '',
//     password: '',
//     domain: 'local',
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

// // class ESXIHostServerModel extends ServerModel {
// //   List<VirtualMachineModel> virtualMachines;
// //   ESXIHostServerModel({
// //     required this.virtualMachines,
// //     required super.id,
// //     required super.name,
// //     required super.ip,
// //     required super.domain,
// //     required super.serial,
// //     required super.osBuild,
// //     required super.username,
// //     required super.password,
// //   });
// // }

// // class VirtualMachineModel extends Equatable {
// //   final String id;
// //   final String name;
// //   final String ip;

// //   VirtualMachineModel({
// //     required this.id,
// //     required this.name,
// //     required this.ip,
// //   });

// //   @override
// //   List<Object> get props => [id, name, ip];
// // }
