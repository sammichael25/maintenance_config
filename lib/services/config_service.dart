// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore: library_names
library ConfigService;

import 'dart:convert';
import 'dart:io';

import 'package:yaml/yaml.dart';

class ConfigService {
  static late File configFile;
  static late String yamlString;
  static late dynamic configMap;
  static late Configs configs;

  static configServiceInit(String path) async {
    configFile = File('$path/server_config.yaml');
    yamlString = await configFile.readAsString();
    configMap = loadYaml(yamlString);
    configs = Configs.fromYMLMap(configMap);
  }
}

class Configs {
  String host;
  String login;
  String password;
  String port;
  String basedn;
  String projectId;
  String endpoint;
  String serverpodEndpoint;
  String functionAPIKey;
  String databaseId;
  String loggingDatabaseId;
  String serversCollectionId;
  String checklistCollectionId;
  String disksCollectionId;
  String cpuCollectionId;
  String ramCollectionId;
  String networksCollectionId;
  String antivirusCollectionId;
  String eventsCollectionId;
  String servicesCollectionId;
  String errorsCollectionId;
  String activeDirectoryGroupsCollectionId;
  String userInfoCollectionId;
  String groupsCollectionId;
  String rolesCollectionId;
  String permissionsCollectionId;
  String applicationInfoCollectionId;
  String applicationInfoDocId;
  String onUserCreatedfunctionId;
  String sendEmailVerificationfunctionId;
  String superAdminUserId;
  String superAdminUserEmail;
  String superAdminRole;
  String superAdminGroup;
  String defaultRoleForNewUsers;

  Configs({
    required this.host,
    required this.login,
    required this.password,
    required this.port,
    required this.basedn,
    required this.projectId,
    required this.endpoint,
    required this.serverpodEndpoint,
    required this.functionAPIKey,
    required this.databaseId,
    required this.loggingDatabaseId,
    required this.serversCollectionId,
    required this.checklistCollectionId,
    required this.disksCollectionId,
    required this.cpuCollectionId,
    required this.ramCollectionId,
    required this.networksCollectionId,
    required this.antivirusCollectionId,
    required this.eventsCollectionId,
    required this.servicesCollectionId,
    required this.errorsCollectionId,
    required this.activeDirectoryGroupsCollectionId,
    required this.userInfoCollectionId,
    required this.groupsCollectionId,
    required this.rolesCollectionId,
    required this.permissionsCollectionId,
    required this.applicationInfoCollectionId,
    required this.applicationInfoDocId,
    required this.onUserCreatedfunctionId,
    required this.sendEmailVerificationfunctionId,
    required this.superAdminUserId,
    required this.superAdminUserEmail,
    required this.superAdminRole,
    required this.superAdminGroup,
    required this.defaultRoleForNewUsers,
  });

  Configs copyWith({
    String? host,
    String? login,
    String? password,
    String? port,
    String? basedn,
    String? projectId,
    String? endpoint,
    String? serverpodEndpoint,
    String? functionAPIKey,
    String? databaseId,
    String? loggingDatabaseId,
    String? serversCollectionId,
    String? checklistCollectionId,
    String? disksCollectionId,
    String? cpuCollectionId,
    String? ramCollectionId,
    String? networksCollectionId,
    String? antivirusCollectionId,
    String? eventsCollectionId,
    String? servicesCollectionId,
    String? errorsCollectionId,
    String? activeDirectoryGroupsCollectionId,
    String? userInfoCollectionId,
    String? groupsCollectionId,
    String? rolesCollectionId,
    String? permissionsCollectionId,
    String? applicationInfoCollectionId,
    String? applicationInfoDocId,
    String? onUserCreatedfunctionId,
    String? sendEmailVerificationfunctionId,
    String? superAdminUserId,
    String? superAdminUserEmail,
    String? superAdminRole,
    String? superAdminGroup,
    String? defaultRoleForNewUsers,
  }) {
    return Configs(
      host: host ?? this.host,
      login: login ?? this.login,
      password: password ?? this.password,
      port: port ?? this.port,
      basedn: basedn ?? this.basedn,
      projectId: projectId ?? this.projectId,
      endpoint: endpoint ?? this.endpoint,
      serverpodEndpoint: serverpodEndpoint ?? this.serverpodEndpoint,
      functionAPIKey: functionAPIKey ?? this.functionAPIKey,
      databaseId: databaseId ?? this.databaseId,
      loggingDatabaseId: loggingDatabaseId ?? this.loggingDatabaseId,
      serversCollectionId: serversCollectionId ?? this.serversCollectionId,
      checklistCollectionId: checklistCollectionId ?? this.checklistCollectionId,
      disksCollectionId: disksCollectionId ?? this.disksCollectionId,
      cpuCollectionId: cpuCollectionId ?? this.cpuCollectionId,
      ramCollectionId: ramCollectionId ?? this.ramCollectionId,
      networksCollectionId: networksCollectionId ?? this.networksCollectionId,
      antivirusCollectionId: antivirusCollectionId ?? this.antivirusCollectionId,
      eventsCollectionId: eventsCollectionId ?? this.eventsCollectionId,
      servicesCollectionId: servicesCollectionId ?? this.servicesCollectionId,
      errorsCollectionId: errorsCollectionId ?? this.errorsCollectionId,
      activeDirectoryGroupsCollectionId: activeDirectoryGroupsCollectionId ?? this.activeDirectoryGroupsCollectionId,
      userInfoCollectionId: userInfoCollectionId ?? this.userInfoCollectionId,
      groupsCollectionId: groupsCollectionId ?? this.groupsCollectionId,
      rolesCollectionId: rolesCollectionId ?? this.rolesCollectionId,
      permissionsCollectionId: permissionsCollectionId ?? this.permissionsCollectionId,
      applicationInfoCollectionId: applicationInfoCollectionId ?? this.applicationInfoCollectionId,
      applicationInfoDocId: applicationInfoDocId ?? this.applicationInfoDocId,
      onUserCreatedfunctionId: onUserCreatedfunctionId ?? this.onUserCreatedfunctionId,
      sendEmailVerificationfunctionId: sendEmailVerificationfunctionId ?? this.sendEmailVerificationfunctionId,
      superAdminUserId: superAdminUserId ?? this.superAdminUserId,
      superAdminUserEmail: superAdminUserEmail ?? this.superAdminUserEmail,
      superAdminRole: superAdminRole ?? this.superAdminRole,
      superAdminGroup: superAdminGroup ?? this.superAdminGroup,
      defaultRoleForNewUsers: defaultRoleForNewUsers ?? this.defaultRoleForNewUsers,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
      'login': login,
      'password': password,
      'port': port,
      'basedn': basedn,
      'projectId': projectId,
      'endpoint': endpoint,
      'serverpodEndpoint': serverpodEndpoint,
      'functionAPIKey': functionAPIKey,
      'databaseId': databaseId,
      'loggingDatabaseId': loggingDatabaseId,
      'serversCollectionId': serversCollectionId,
      'checklistCollectionId': checklistCollectionId,
      'disksCollectionId': disksCollectionId,
      'cpuCollectionId': cpuCollectionId,
      'ramCollectionId': ramCollectionId,
      'networksCollectionId': networksCollectionId,
      'antivirusCollectionId': antivirusCollectionId,
      'eventsCollectionId': eventsCollectionId,
      'servicesCollectionId': servicesCollectionId,
      'errorsCollectionId': errorsCollectionId,
      'activeDirectoryGroupsCollectionId': activeDirectoryGroupsCollectionId,
      'userInfoCollectionId': userInfoCollectionId,
      'groupsCollectionId': groupsCollectionId,
      'rolesCollectionId': rolesCollectionId,
      'permissionsCollectionId': permissionsCollectionId,
      'applicationInfoCollectionId': applicationInfoCollectionId,
      'applicationInfoDocId': applicationInfoDocId,
      'onUserCreatedfunctionId': onUserCreatedfunctionId,
      'sendEmailVerificationfunctionId': sendEmailVerificationfunctionId,
      'superAdminUserId': superAdminUserId,
      'superAdminUserEmail': superAdminUserEmail,
      'superAdminRole': superAdminRole,
      'superAdminGroup': superAdminGroup,
      'defaultRoleForNewUsers': defaultRoleForNewUsers,
    };
  }

  factory Configs.fromYMLMap(YamlMap map) {
    return Configs(
      host: map['host'] as String,
      login: map['login'] as String,
      password: map['password'] as String,
      port: map['port'] as String,
      basedn: map['basedn'] as String,
      projectId: map['projectId'] as String,
      endpoint: map['endpoint'] as String,
      serverpodEndpoint: map['serverpodEndpoint'] as String,
      functionAPIKey: map['functionAPIKey'] as String,
      databaseId: map['databaseId'] as String,
      loggingDatabaseId: map['loggingDatabaseId'] as String,
      serversCollectionId: map['serversCollectionId'] as String,
      checklistCollectionId: map['checklistCollectionId'] as String,
      disksCollectionId: map['disksCollectionId'] as String,
      cpuCollectionId: map['cpuCollectionId'] as String,
      ramCollectionId: map['ramCollectionId'] as String,
      networksCollectionId: map['networksCollectionId'] as String,
      antivirusCollectionId: map['antivirusCollectionId'] as String,
      eventsCollectionId: map['eventsCollectionId'] as String,
      servicesCollectionId: map['servicesCollectionId'] as String,
      errorsCollectionId: map['errorsCollectionId'] as String,
      activeDirectoryGroupsCollectionId: map['activeDirectoryGroupsCollectionId'] as String,
      userInfoCollectionId: map['userInfoCollectionId'] as String,
      groupsCollectionId: map['groupsCollectionId'] as String,
      rolesCollectionId: map['rolesCollectionId'] as String,
      permissionsCollectionId: map['permissionsCollectionId'] as String,
      applicationInfoCollectionId: map['applicationInfoCollectionId'] as String,
      applicationInfoDocId: map['applicationInfoDocId'] as String,
      onUserCreatedfunctionId: map['onUserCreatedfunctionId'] as String,
      sendEmailVerificationfunctionId: map['sendEmailVerificationfunctionId'] as String,
      superAdminUserId: map['superAdminUserId'] as String,
      superAdminUserEmail: map['superAdminUserEmail'] as String,
      superAdminRole: map['superAdminRole'] as String,
      superAdminGroup: map['superAdminGroup'] as String,
      defaultRoleForNewUsers: map['defaultRoleForNewUsers'] as String,
    );
  }

  factory Configs.fromMap(Map<String, dynamic> map) {
    return Configs(
      host: map['host'] as String,
      login: map['login'] as String,
      password: map['password'] as String,
      port: map['port'] as String,
      basedn: map['basedn'] as String,
      projectId: map['projectId'] as String,
      endpoint: map['endpoint'] as String,
      serverpodEndpoint: map['serverpodEndpoint'] as String,
      functionAPIKey: map['functionAPIKey'] as String,
      databaseId: map['databaseId'] as String,
      loggingDatabaseId: map['loggingDatabaseId'] as String,
      serversCollectionId: map['serversCollectionId'] as String,
      checklistCollectionId: map['checklistCollectionId'] as String,
      disksCollectionId: map['disksCollectionId'] as String,
      cpuCollectionId: map['cpuCollectionId'] as String,
      ramCollectionId: map['ramCollectionId'] as String,
      networksCollectionId: map['networksCollectionId'] as String,
      antivirusCollectionId: map['antivirusCollectionId'] as String,
      eventsCollectionId: map['eventsCollectionId'] as String,
      servicesCollectionId: map['servicesCollectionId'] as String,
      errorsCollectionId: map['errorsCollectionId'] as String,
      activeDirectoryGroupsCollectionId: map['activeDirectoryGroupsCollectionId'] as String,
      userInfoCollectionId: map['userInfoCollectionId'] as String,
      groupsCollectionId: map['groupsCollectionId'] as String,
      rolesCollectionId: map['rolesCollectionId'] as String,
      permissionsCollectionId: map['permissionsCollectionId'] as String,
      applicationInfoCollectionId: map['applicationInfoCollectionId'] as String,
      applicationInfoDocId: map['applicationInfoDocId'] as String,
      onUserCreatedfunctionId: map['onUserCreatedfunctionId'] as String,
      sendEmailVerificationfunctionId: map['sendEmailVerificationfunctionId'] as String,
      superAdminUserId: map['superAdminUserId'] as String,
      superAdminUserEmail: map['superAdminUserEmail'] as String,
      superAdminRole: map['superAdminRole'] as String,
      superAdminGroup: map['superAdminGroup'] as String,
      defaultRoleForNewUsers: map['defaultRoleForNewUsers'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Configs.fromJson(String source) => Configs.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Configs(host: $host, login: $login, password: $password, port: $port, basedn: $basedn, projectId: $projectId, endpoint: $endpoint, serverpodEndpoint: $serverpodEndpoint, functionAPIKey: $functionAPIKey, databaseId: $databaseId, loggingDatabaseId: $loggingDatabaseId, serversCollectionId: $serversCollectionId, checklistCollectionId: $checklistCollectionId, disksCollectionId: $disksCollectionId, cpuCollectionId: $cpuCollectionId, ramCollectionId: $ramCollectionId, networksCollectionId: $networksCollectionId, antivirusCollectionId: $antivirusCollectionId, eventsCollectionId: $eventsCollectionId, servicesCollectionId: $servicesCollectionId, errorsCollectionId: $errorsCollectionId, activeDirectoryGroupsCollectionId: $activeDirectoryGroupsCollectionId, userInfoCollectionId: $userInfoCollectionId, groupsCollectionId: $groupsCollectionId, rolesCollectionId: $rolesCollectionId, permissionsCollectionId: $permissionsCollectionId, applicationInfoCollectionId: $applicationInfoCollectionId, applicationInfoDocId: $applicationInfoDocId, onUserCreatedfunctionId: $onUserCreatedfunctionId, sendEmailVerificationfunctionId: $sendEmailVerificationfunctionId, superAdminUserId: $superAdminUserId, superAdminUserEmail: $superAdminUserEmail, superAdminRole: $superAdminRole, superAdminGroup: $superAdminGroup, defaultRoleForNewUsers: $defaultRoleForNewUsers)';
  }

  @override
  bool operator ==(covariant Configs other) {
    if (identical(this, other)) return true;
  
    return 
      other.host == host &&
      other.login == login &&
      other.password == password &&
      other.port == port &&
      other.basedn == basedn &&
      other.projectId == projectId &&
      other.endpoint == endpoint &&
      other.serverpodEndpoint == serverpodEndpoint &&
      other.functionAPIKey == functionAPIKey &&
      other.databaseId == databaseId &&
      other.loggingDatabaseId == loggingDatabaseId &&
      other.serversCollectionId == serversCollectionId &&
      other.checklistCollectionId == checklistCollectionId &&
      other.disksCollectionId == disksCollectionId &&
      other.cpuCollectionId == cpuCollectionId &&
      other.ramCollectionId == ramCollectionId &&
      other.networksCollectionId == networksCollectionId &&
      other.antivirusCollectionId == antivirusCollectionId &&
      other.eventsCollectionId == eventsCollectionId &&
      other.servicesCollectionId == servicesCollectionId &&
      other.errorsCollectionId == errorsCollectionId &&
      other.activeDirectoryGroupsCollectionId == activeDirectoryGroupsCollectionId &&
      other.userInfoCollectionId == userInfoCollectionId &&
      other.groupsCollectionId == groupsCollectionId &&
      other.rolesCollectionId == rolesCollectionId &&
      other.permissionsCollectionId == permissionsCollectionId &&
      other.applicationInfoCollectionId == applicationInfoCollectionId &&
      other.applicationInfoDocId == applicationInfoDocId &&
      other.onUserCreatedfunctionId == onUserCreatedfunctionId &&
      other.sendEmailVerificationfunctionId == sendEmailVerificationfunctionId &&
      other.superAdminUserId == superAdminUserId &&
      other.superAdminUserEmail == superAdminUserEmail &&
      other.superAdminRole == superAdminRole &&
      other.superAdminGroup == superAdminGroup &&
      other.defaultRoleForNewUsers == defaultRoleForNewUsers;
  }

  @override
  int get hashCode {
    return host.hashCode ^
      login.hashCode ^
      password.hashCode ^
      port.hashCode ^
      basedn.hashCode ^
      projectId.hashCode ^
      endpoint.hashCode ^
      serverpodEndpoint.hashCode ^
      functionAPIKey.hashCode ^
      databaseId.hashCode ^
      loggingDatabaseId.hashCode ^
      serversCollectionId.hashCode ^
      checklistCollectionId.hashCode ^
      disksCollectionId.hashCode ^
      cpuCollectionId.hashCode ^
      ramCollectionId.hashCode ^
      networksCollectionId.hashCode ^
      antivirusCollectionId.hashCode ^
      eventsCollectionId.hashCode ^
      servicesCollectionId.hashCode ^
      errorsCollectionId.hashCode ^
      activeDirectoryGroupsCollectionId.hashCode ^
      userInfoCollectionId.hashCode ^
      groupsCollectionId.hashCode ^
      rolesCollectionId.hashCode ^
      permissionsCollectionId.hashCode ^
      applicationInfoCollectionId.hashCode ^
      applicationInfoDocId.hashCode ^
      onUserCreatedfunctionId.hashCode ^
      sendEmailVerificationfunctionId.hashCode ^
      superAdminUserId.hashCode ^
      superAdminUserEmail.hashCode ^
      superAdminRole.hashCode ^
      superAdminGroup.hashCode ^
      defaultRoleForNewUsers.hashCode;
  }
}
